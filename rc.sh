#!/bin/bash
message="SSH_TEST"                                  #送信するメッセージ
ip=`echo ${SSH_CLIENT} | cut -d " " -f 1`           #ログインしたクライアントのIPアドレスを取得
usr=`whoami`                                        #ログインしたユーザー名を取得

token="Q4fTP3XKGuQiU29gXFJo0MX7b8bwgOuYAXKj35xs1ry" #notifyのトークン
url="https://notify-api.line.me/api/notify"         #notifyのURL

curl -X POST -H "Authorization: Bearer $token" -F "message=$message $ip $usr" $url