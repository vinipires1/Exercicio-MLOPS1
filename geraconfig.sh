
echo '{                                                     ' >  config/microservices.json
echo '  "models": {                                         ' >> config/microservices.json
echo '    "modelo_kmeans": {                                     ' >> config/microservices.json
echo '      "version": "V01",                               ' >> config/microservices.json
echo '      "url": "http://'$(sudo docker inspect serving01 | python3 -c "import sys, json; print(json.load(sys.stdin)[0]['NetworkSettings']['Networks']
['plat_network']['IPAddress'])")':8080/modelo_kmeans"          ' >> config/microservices.json
echo '    },                                                ' >> config/microservices.json
echo '    "modelo_regressao": {                                  ' >> config/microservices.json
echo '      "version": "V01",                               ' >> config/microservices.json
echo '      "url": "http://'$(sudo docker inspect serving02 | python3 -c "import sys, json; print(json.load(sys.stdin)[0]['NetworkSettings']['Networks']
['plat_network']['IPAddress'])")':8080/modelo_regressao"       ' >> config/microservices.json
echo '    },                                                ' >> config/microservices.json
echo '    "modelo_xgb": {                                        ' >> config/microservices.json
echo '      "version": "V01",                               ' >> config/microservices.json
echo '      "url": "http://'$(sudo docker inspect serving03 | python3 -c "import sys, json; print(json.load(sys.stdin)[0]['NetworkSettings']['Networks']
['plat_network']['IPAddress'])")':8080/modelo_xgb"             ' >> config/microservices.json
echo '    }                                                 ' >> config/microservices.json
echo '  }                                                   ' >> config/microservices.json
echo '}                                                     ' >> config/microservices.json

echo "Arquivo de configuração atualizado com sucesso. Veja seu conteúdo: "

cat config/microservices.json