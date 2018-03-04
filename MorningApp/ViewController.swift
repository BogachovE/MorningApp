//
//  ViewController.swift
//  MorningApp
//
//  Created by Bogachov on 19/02/2018.
//  Copyright © 2018 Bogachov. All rights reserved.
//

import UIKit

class ViewController:
    UIViewController,
    UICollectionViewDelegate,
UICollectionViewDataSource {
    
    @IBOutlet weak var calendarCollection: UICollectionView!
//    @IBOutlet weak var ritualCollection: UICollectionView!
//    var dayOfWeekArray = ["П", "В", "Cр", "Ч", "П", "Сб", "Вс", "П", "В", "Cр", "Ч", "П", "Сб", "Вс"]
//    var backgrounArray = [ #imageLiteral(resourceName: "oval_beryzovii"), #imageLiteral(resourceName: "oval_beryzovii"),#imageLiteral(resourceName: "oval_green"), #imageLiteral(resourceName: "oval_yellow"), #imageLiteral(resourceName: "oval_green") ,#imageLiteral(resourceName: "oval_yellow")]
//    var titleArray = ["Тишина", "Афирмации", "Визуализация", "Упражнения", "Чтение", "Запись"]
//    var subtitleArray = ["Медитация", "Проговаривание", "Воображение", "7 минутный воркаут", "Устройство гормонов", "Дневник"]
//    var descriptionArray = ["Присудствуй в этом моменте", "Ты самый самый самый", "Кем ты хочешь быть через 5 лет", "30 секундные упражнения с коротким перерывом", "Устройство нашего организма, счастье по научному", "Как прошел твой день, кому ты благодарен"]
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == calendarCollection) {
            return 42
        } else {
            return 5
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (collectionView == calendarCollection) {
            let calendarCell = collectionView.dequeueReusableCell(withReuseIdentifier: "calendarCell", for: indexPath) as! CalendarCollectionViewCell
            if indexPath.row == 0 {
                calendarCell.backgroundColor = UIColor.black
            } else {
                calendarCell.backgroundColor = UIColor.white
            }
//            calendarCell.dayOfWeek.text = dayOfWeekArray[indexPath.row]
//            calendarCell.dayOfYear.text = "\(indexPath.row)"
            return calendarCell
        } else {
//            let ritualCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ritualCell", for: indexPath) as! RetualViewCell
//            ritualCell.backgroundImage.image = backgrounArray[indexPath.row]
//            ritualCell.title.text = titleArray[indexPath.row]
//            ritualCell.subtitle.text = subtitleArray[indexPath.row]
//            ritualCell.ritualDescription.text = descriptionArray[indexPath.row]
//            return ritualCell
        }
        return UICollectionViewCell()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        calendarCollection.dataSource = self
        calendarCollection.delegate = self
//        ritualCollection.delegate = self
//        ritualCollection.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

