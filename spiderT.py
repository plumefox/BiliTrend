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


class Spider():
    def __init__(self):
        self.headers = {
            'Host': 'www.bilibili.com',
            'Referer': 'https://www.bilibili.com/',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) '
                          'AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 '
                          'Safari/537.36 Edge/16.16299'
        }

        self.targetUrlMap= {
            "BiliTrendAll":{
                "index":"/all",
                "content":{
                    "all":"/0/0/3",
                    "cartoon":"/1/0/3",
                    "orgin":"/168/0/3",
                    "music":"/3/0/3",
                    "dance":"/129/0/3",
                    "game":"/4/0/3",
                    "technique":"/36/0/3",
                    "machine":"/188/0/3",
                    "life":"/160/0/3",
                    "guichu":"/119/0/3",
                    "fashion":"/155/0/3",
                    "yuLe":"/5/0/3",
                    "movie":"/181/0/3"
                }

            },
            "BiliTrendOrigin":{
                "index":"/origin",
                "content":{
                        "all": "/0/0/3",
                        "cartoon": "/1/0/3",
                        "orgin": "/168/0/3",
                        "music": "/3/0/3",
                        "dance": "/129/0/3",
                        "game": "/4/0/3",
                        "technique": "/36/0/3",
                        "machine": "/188/0/3",
                        "life": "/160/0/3",
                        "guichu": "/119/0/3",
                        "fashion": "/155/0/3",
                        "yuLe": "/5/0/3",
                        "movie": "/181/0/3"
                }
            },
            "BiliTrendBangumi":{
                "index":"/bangumi",
                "content":{
                    "Japan":"/13/0/3",
                    "China":"/167/0/3"
                }

            },
            "BiliTrendCinema":{
                "index":"/cinema",
                "content":{
                    "newsreel":"/177/0/3",
                    "movie":"/23/0/3",
                    "teleplay":"/11/0/3"

                }
            },
            "BiliTrendRookie":{
                "index":"/rookie",
                "content":{
                        "all": "/0/0/3",
                        "cartoon": "/1/0/3",
                        "music": "/3/0/3",
                        "dance": "/129/0/3",
                        "game": "/4/0/3",
                        "technique": "/36/0/3",
                        "machine": "/188/0/3",
                        "life": "/160/0/3",
                        "guichu": "/119/0/3",
                        "fashion": "/155/0/3",
                        "yuLe": "/5/0/3",
                        "movie": "/181/0/3"
                }

            },
        }

        self.targetUrlIndex = "https://www.bilibili.com/ranking"
        self.content = None
        # set proxy default close
        self.setProxyIP()
        self.setHttpProxy(False)
        # save the result in list
        self.resultList = []
        self.__setReusltDic()


    def run(self):
        self.__start()

    # start the Spider
    def __start(self):

        for key in self.targetUrlMap:
            dictMap = self.targetUrlMap[key]
            # print(dictMap['content'])
            self.targetUrl = self.targetUrlIndex+dictMap['index']
            self.targetUrlS = self.targetUrlIndex+dictMap['index']

            for t in dictMap['content']:
                self.targetUrl = self.targetUrl + dictMap['content'][t]
                print("start to spider:",self.targetUrl)

                self.setRequest()
                self.response = self.opener.open(self.req)
                status = self.response.getcode()

                # ban
                if(status != 200):
                    self.setHttpProxy(True)
                    self.response = self.opener.open(self.req)

                res = self.response.read()
                self.content = res.decode("utf-8")
                # print(self.content)
                self.__getHtml()
                self.__getRankItemInformation()
                self.__createDict()
                self.saveDataToMysql(key+t)
                print("table:"+key+t)
                self.targetUrl = self.targetUrlS


    # set Request
    def setRequest(self):
        self.req = request.Request(self.targetUrl, headers=self.headers)

    # set Headers
    def setHeaders(self,headers):
        self.headers = headers

    def setHttpProxy(self,proxySwitch = False,mysqlSource=True):
        # mysqlSource is the button of the source: if open,source will from mysql or must set proxy ip before this function
        # no proxy
        nullproxy_handler = request.ProxyHandler({})
        print("proxy",proxySwitch)
        if proxySwitch:
            if(mysqlSource):
                import ProxyIP
                item = ProxyIP.ProxyIP()
                item.readProxyIP()
                proxyIPinformation = item.getProxyIP(self.targetUrl, self.headers)
                print(proxyIPinformation)

                if(proxyIPinformation):
                    self.proxyIP = self.setProxyIP(proxyIPinformation['protocol'],proxyIPinformation['ip'],proxyIPinformation['port'])
                else:
                    print("None legally proxy ip or consider to close this function")
                    import sys
                    sys.exit(-1)

            httpproxy_handler = request.ProxyHandler(self.proxyIP)
            self.opener = request.build_opener(httpproxy_handler)

        else:
            self.opener = request.build_opener(nullproxy_handler)
        # req = request.Request("http://www.baidu.com")

        # reponse = self.opener.open(req)
        # print(reponse.read())

    def setProxyIP(self,protocal = "http",ip = "110.52.235.114",port = "9999"):
        self.proxyIP = {
            protocal:ip+":"+port
        }

    def __getHtml(self):
        self.html = etree.HTML(self.content)

    def __setReusltDic(self,title=None,rank=None,rankimg=None,href =None,
                       playCount= None,view = None,upHref = None,upName = None,pts = None):
        self.resultItem  = {
            "rank":rank,
            "title":title,
            "rankimg":rankimg,
            "herf":href,
            "playCount":playCount,
            "view":view,
            "upHref":upHref,
            "upName":upName,
            "pts":pts
        }


    def __getRankItemInformation(self):
        try:
            xPathUrl = '//div[@class = "rank-list-wrap"]/ul[@class = "rank-list"]/li[@class = "rank-item"]'
            # rank of the video
            self.rank = self.html.xpath(xPathUrl+'/div[@class = "num"]/text()')

            # title of the video
            self.Title = self.html.xpath(xPathUrl+'/div[@class = "content"]/div[@class = "info"]/a[@class = "title"]/text()')

            # image of the video
            self.Rankimg = self.html.xpath(xPathUrl+'/div[@class = "content"]/div[@class = "img"]/a/@href')

            # link of the video
            self.href = self.html.xpath(xPathUrl+'/div[@class = "content"]/div[@class = "info"]/a[@class = "title"]/@href')

            # num of the play times
            self.playCount = self.html.xpath(xPathUrl + '/div[@class = "content"]/div[@class = "info"]/div[@class = "detail"]/span[1]/text()')

            # num of views
            self.view = self.html.xpath(xPathUrl + '/div[@class = "content"]/div[@class = "info"]/div[@class = "detail"]/span[2]/text()')

            # link of upr's space
            self.upHref = self.html.xpath(xPathUrl + '/div[@class = "content"]/div[@class = "info"]/div[@class = "detail"]/a/@href')

            # upr's name
            self.upName = self.html.xpath(xPathUrl + '/div[@class = "content"]/div[@class = "info"]/div[@class = "detail"]/a/span/text()')

            # pts
            self.pts = self.html.xpath(xPathUrl + '/div[@class = "content"]/div[@class = "info"]/div[@class = "pts"]/div/text()')

        except Exception as e:
            print(e)
    def __createDict(self):
        length = len(self.rank)

        for i in range(0,length):
            thisRank = self.rank[i]
            thisTitle = self.Title[i]
            thisImg = self.Rankimg[i]
            thisHref = self.href [i]
            thisPlayCount = self.playCount[i]
            thisView = self.view[i]
            thisUpHref = self.upHref[i]
            thisUpName = self.upName[i]
            thisPts = self.pts[i]
            self.__setReusltDic(thisTitle,thisRank,thisImg,thisHref,thisPlayCount,thisView,thisUpHref,thisUpName,thisPts)
            self.resultList.append(self.resultItem)

        print(len(self.resultList))
        print(self.resultList)
    def saveDataToMysql(self,tableName):
        import mySQLConnect
        this = mySQLConnect.MySqlConnection()
        this.saveInformation(tableName,self.resultList)
        self.resultList = []

if __name__ == '__main__':
    a = Spider()
    # a.setHttpProxy(True)
    a.run()


