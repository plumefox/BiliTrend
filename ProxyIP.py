# * coding:utf-8 *
# Author : Lucy Cai
# Create Time : 2019/4/12
# IDE : PyCharm

#  Copyright(C) 2019 Lucy Cai/plumefox (LucysTime@outlook.com)
#  Github:https://github.com/plumefox/BiliTrend/

# Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        https://github.com/plumefox/BiliTrend/LICENSE
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
# ===============================
from urllib import request
from lxml import etree


class ProxyIP():
    def __init__(self):
        self.headers = {
            'Host': 'www.xicidaili.com',
            'Referer': 'https://www.xicidaili.com/',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) '
                          'AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 '
                          'Safari/537.36 Edge/16.16299'
        }
        self.targetUrl = "https://www.xicidaili.com/nn/"
        self.content = None

        # save the result in list
        self.resultList = []
        self.__setReusltDic()

    def run(self):
        self.__start()

    # start the Spider
    def __start(self):
        self.setRequest()
        self.response = request.urlopen(self.req)
        res = self.response.read()
        self.content = res.decode("utf-8")
        # print(self.content)
        self.__getHtml()
        self.__getRankItemInformation()
        # self.__createDict()
        self.saveTomySql()

    # set Request
    def setRequest(self):
        self.req = request.Request(self.targetUrl, headers=self.headers)
        # set Headers

    def setHeaders(self, headers):
        self.headers = headers
    def __getHtml(self):
        self.html = etree.HTML(self.content)

    def __setReusltDic(self,ip=None,port=None,type= None,protocol = None,
                       speed = None,connectTime = None,aliveTime = None):
        self.resultItem  = {
            "country":'cn',
            "ip":ip,
            "port":port,
            "type":type,
            "protocol":protocol,
            "speed":speed,
            "connectTime":connectTime,
            "aliveTime":aliveTime
        }

    def __getRankItemInformation(self):
        try:
            xPathUrl ='//table/tr'

            self.ip = self.html.xpath(xPathUrl+'/td[2]/text()')

            self.port = self.html.xpath(xPathUrl+'/td[3]/text()')

            self.type = self.html.xpath(xPathUrl + '/td[5]/text()')

            self.protocol = self.html.xpath(xPathUrl + '/td[6]/text()')

            self.speed = self.html.xpath(xPathUrl + '/td[7]/div[@class = "bar"]/@title')

            self.connectTime = self.html.xpath(xPathUrl + '/td[8]/div[@class = "bar"]/@title')

            self.aliveTime = self.html.xpath(xPathUrl + '/td[9]/text()')
        except Exception as e:
            print(e)
    def __createDict(self):
        length = len(self.ip)
        for i in range(0,length):
            thisip = self.ip[i]
            thisport = self.port[i]
            thistype = self.type[i]
            thisprotocol = self.protocol [i]
            thisspeed = self.speed[i]
            thisconnectTime = self.connectTime[i]
            thisaliveTime = self.aliveTime[i]
            self.__setReusltDic(thisip,thisport,thistype,thisprotocol,thisspeed,thisconnectTime,thisaliveTime)
            self.resultList.append(self.resultItem)

        print(len(self.resultList))
        print(self.resultList)

    def setProxyIP(self, protocal="http", ip="110.52.235.114", port="9999"):
        self.proxyIP = {
            protocal: ip + ":" + port
        }
        print(self.proxyIP)

    def setHttpProxy(self, proxySwitch=False):
        httpproxy_handler = request.ProxyHandler(self.proxyIP)
        print(self.proxyIP)
        # no proxy
        nullproxy_handler = request.ProxyHandler({})

        if proxySwitch:
            print("switch open")
            self.opener = request.build_opener(httpproxy_handler)
        else:
            self.opener = request.build_opener(nullproxy_handler)

    # this test used before saving
    def testProxyIP(self):
        length = len(self.ip)
        count = 0
        headers = {
            'Host': 'www.baidu.com',
            'Referer': 'https://www.baidu.com/',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) '
                          'AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 '
                          'Safari/537.36 Edge/16.16299'

        }

        for i in range(0,length):
            self.setProxyIP(self.protocol[i],self.ip[i],self.port[i])
            self.setHttpProxy(True)
            self.setHeaders(headers=headers)
            req = request.Request("http://www.baidu.com")
            reponse = self.opener.open(req)
            status = reponse.getcode()

            if(status == 200):
                self.__setReusltDic(self.ip[i], self.port[i], self.type[i], self.protocol[i], self.speed[i], self.connectTime[i], self.aliveTime[i])
                self.resultList.append(self.resultItem)
                count += 1
        print(count)

    def saveTomySql(self):
        self.testProxyIP()
        import mySQLConnect
        this = mySQLConnect.MySqlConnection()
        this.save_myself(self.resultList)

    # this test used before using
    def testOneIP(self,protocol,ip,port,url,headers):
        self.setProxyIP(protocol,ip,port)
        self.setHttpProxy(True)
        self.setHeaders(headers=headers)

        print(url)
        req = request.Request(url)
        reponse = self.opener.open(req)
        status = reponse.getcode()
        print(status)

        if(status == 200):
            return True
        else:
            return False


    def readProxyIP(self):
        # get ip from mysql and save to resultList
        import mySQLConnect
        this = mySQLConnect.MySqlConnection()
        self.resultList = []
        self.resultList = this.select_mysql()


    def getProxyIP(self,testUrl,headers):
        print("start")
        flag = False
        needProtocol = testUrl.split(':')[0].upper()

        for i in range(0, len(self.resultList)):
            temp_dict = self.resultList[i]
            ip = temp_dict['ip']
            port = temp_dict['port']
            protocol = temp_dict['protocol']

            # 保证都是http或者https 否则不起作用
            if(protocol != needProtocol):
                continue

            #if end of the mysql: return and tell the status
            # test proxy ip
            flag = self.testOneIP(protocol,ip,port,testUrl,headers)
            print(flag)
            if(flag):
                proxyIPInformation = {
                    "ip": ip,
                    "port": port,
                    "protocol": protocol,
                }
                return proxyIPInformation
        return None



if __name__ == '__main__':
    headers = {
        'Host': 'www.bilibili.com',
        'Referer': 'https://www.bilibili.com/',
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) '
                      'AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 '
                      'Safari/537.36 Edge/16.16299'
    }
    url = 'https://www.bilibili.com/ranking/'
    a = ProxyIP()
    a.readProxyIP()
    u = a.getProxyIP(url,headers)

    print(u)
    print("a")
