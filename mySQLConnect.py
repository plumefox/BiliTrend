# * coding:utf-8 *
# Author : Lucy Cai
# Create Time : 2019/4/12
# IDE : PyCharm
# ===============================

import pymysql
import time, datetime

class MySqlConnection():
    def __init__(self):
        pass
    def connect_mysql(self):
        self.connection = pymysql.connect(host='localhost',
                                          user='root',#这里输入mysql用户名
                                          password='',#这里输入mysql密码
                                          db='proxyIP',#这里输入mysql库名
                                          charset='utf8mb4',
                                          cursorclass=pymysql.cursors.DictCursor)



    def select_mysql(self):
        self.connect_mysql()
        try:
            with self.connection.cursor() as cursor:

                sql = "SELECT `country`, `ip`,`port`,`protocol` FROM `xicidaili`"
                cursor.execute(sql)
                result = cursor.fetchall()
        finally:
            self.connection.close()

        return result


    def save_myself(self,dataList):
        self.connect_mysql()
        try:
            with self.connection.cursor() as cursor:
                sql = "INSERT INTO `xicidaili` (`country`, `ip`,`port`,`type`,`protocol`,`speed`,`connectTime`,`aliveTime`,`myaliveTime`,`DatabasecreatedTime`,`DatabaseupdateTime`) " \
                      "VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s )"
                for data in dataList:
                    # Create a new record
                    thisCountry = data['country']
                    thisip = data['ip']
                    thisport = data['port']
                    thistype = data['type']
                    thisprotocol = data['protocol']
                    thisspeed = data['speed']
                    thisconnectTime = data['connectTime']
                    thisaliveTime = data['aliveTime']
                    myaliveTime = 0
                    DatabasecreatedTime = int(round(time.time() * 1000))
                    cursor.execute(sql, (thisCountry,thisip,thisport,thistype,thisprotocol,thisspeed,thisconnectTime,thisaliveTime,myaliveTime,DatabasecreatedTime,DatabasecreatedTime))
                    self.connection.commit()
        finally:
            self.connection.close()

    def saveInformation(self,tableName,dataList):
        connection = pymysql.connect(host='localhost',
                                  user='root',  # 这里输入mysql用户名
                                  password='',  # 这里输入mysql密码
                                  db='BiliTrend',  # 这里输入mysql库名
                                  charset='utf8mb4',
                                  cursorclass=pymysql.cursors.DictCursor)
        try:
            with connection.cursor() as cursor:
                sql = "INSERT INTO `"+tableName+"` (`rank`, `title`,`herf`,`playCount`,`view`,`upHerf`,`upName`,`pts`,`DatabasecreatedTime`,`DatabaseupdateTime`) " \
                      "VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s )"
                for data in dataList:
                    # Create a new record
                    thisRank = data['rank']
                    thisTitle = data['title']
                    thisHerf = data['herf']
                    thisPlayCount = data['playCount']
                    thisview = data['view']
                    thisUpHerf = data['upHref']
                    thisUpName = data['upName']
                    thisPts = data['pts']
                    DatabasecreatedTime = int(round(time.time() * 1000))
                    cursor.execute(sql, (thisRank,thisTitle,thisHerf,thisPlayCount,thisview,thisUpHerf,thisUpName,thisPts,DatabasecreatedTime,DatabasecreatedTime))
                    connection.commit()
        finally:
            connection.close()



if __name__ == '__main__':
    a = MySqlConnection()
    s = a.select_mysql()
    print(s)