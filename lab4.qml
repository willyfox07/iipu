import QtQuick 2.0

Item {
    width: 1180
        height: 640
        visible: true

        Text {
            id: text1
            x: 31
            y: 29
            width: 571
            height: 480
            text: qsTr("


    Алгоритм записи в COM - порт

    1. В БА+3 заносим 1000 0000 для использования БА+0 в качестве делителя частоты
    2. В БА+0 занести делитель частоты (максимальная частота 115200/нужная частота)
    3. В БА+3 занести 0 и 7-й бит для использования БА+0 в качестве буфера данных, а в 5,4,3 - биты контроля
    - хх0 - отсутствие бита контроля четности
    - 001 - бит контроля формируется по четному паритету
    - 011 - бит контроля формируется по нечетному паритету
    - 101 - бит контроля равен 1
    - 111 - бит контроля равен 0
    4. Из БА+5 считываем 5-й бит, если 1, то в БА+0 заносим ASCII-код N-го символа данных, возвращаемся на п4, N++

                        Алгоритм чтения из COM - порта

    1. В БА+3 заносим 1000 0000 для использования БА+0 в качестве делителя частоты
    2. В БА+0 занести делитель частоты (максимальная частота 115200/нужная частота)
    3. В БА+3 занести 0 и 7-й бит для использования БА+0 в качестве буфера данных, а в 5,4,3 - биты контроля
    - хх0 - отсутствие бита контроля четности
    - 001 - бит контроля формируется по четному паритету
    - 011 - бит контроля формируется по нечетному паритету
    - 101 - бит контроля равен 1
    - 111 - бит контроля равен 0
    4. Из БА+5 считываем 1-й бит, если 1, то из БА+0 считываем ASCII-код N-го символа данных, возвращаемся на п4, N++
    ")
            font.pixelSize: 20

        }
}