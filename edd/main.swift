import Foundation
var bus: [Int]=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
while(true)
{
    print ("1. Просмотр 2. Бронирование  3. Отмена ")
    switch readLine()
    {
    case "1":
        for(index, value) in bus.enumerated()
        {
            if (value==1){
                print("Место № \(index+1) занято")
            }else
            {
                print("Место № \(index+1) свободно")
            }
        }
        break
    case "2":
        for(index, value) in bus.enumerated()
        {
            if (value==0){
                print("Место № \(index+1) свободно")
            }
            
        }
        print("Выберите свободное место:")
        if let vibormesta = readLine() {
            if let num = Int(vibormesta) {
                bus[num-1]=1
            }
        }
        print("Место забронировано!")
        break
        
    case "3":
        print("Выберите нужное место: ")
        for(index, value) in bus.enumerated()
        {
            if (value==1){
                print("Место № \(index+1) занято")
            }
        }
        if let vibormesta = readLine(){
            if let num = Int(vibormesta){
                bus[num-1]=0
            }
        }
        print("Место свободно :)")
        break
    default:
        print("Выберите доступное действие")
    }
}
