//
//  ScheduleWeekVC.swift
//  HTWDD
//
//  Created by Fabian Ehlert on 30.10.17.
//  Copyright © 2017 HTW Dresden. All rights reserved.
//

import UIKit
import RxSwift

final class ScheduleWeekVC: ScheduleBaseVC {

    private let days = [
        Loca.monday_short,
        Loca.tuesday_short,
        Loca.wednesday_short,
        Loca.thursday_short,
        Loca.friday_short,
        Loca.saturday_short,
        Loca.sunday_short
    ]
	
	private let layout = ScheduleWeekLayout()

	// MARK: - Init

	init(configuration: ScheduleDataSource.Configuration) {
        var config = configuration
        config.originDate = nil
        config.stripBeginningFreeDays = true
        config.removeWeekend = true
        super.init(configuration: config, layout: layout, startHour: 6.5)
        layout.dataSource = self
        self.dataSource.delegate = self
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.isDirectionalLockEnabled = true
        
        self.dataSource.register(type: LectureCollectionViewCell.self)
        self.dataSource.registerSupplementary(LectureTimeView.self, kind: .description) { [weak self] time, indexPath in
            guard let `self` = self else {
                return
            }
            let hour = Int(self.startHour) - 1 + indexPath.row
            time.hour = hour
        }
        self.dataSource.registerSupplementary(CollectionBackgroundView.self, kind: .background) { [weak self] background, _ in
            background.backgroundColor = self?.collectionView.backgroundColor
        }
        self.dataSource.registerSupplementary(CollectionHeaderView.self, kind: .header) { [weak self] view, indexPath in
            guard let `self` = self else { return }
            let info = self.dataSource.dayInformation(indexPath: indexPath)
            view.textAlignment = .center
            let day = NSAttributedString(string: info.date.string(format: "E"), attributes: [.font: UIFont.systemFont(ofSize: 14, weight: .medium)])
            let date = NSAttributedString(string: info.date.string(format: "dd.MM."), attributes: [.font: UIFont.systemFont(ofSize: 12, weight: .light)])
            view.attributedTitle = day + "\n" + date
        }
	}

    override func jumpToToday() {
        self.scrollToToday(animated: true)
    }
    
    private func scrollToToday(animated: Bool) {
        guard let today = self.dataSource.indexPathOfToday else {
            return
        }
        
        // Begin of week (monday)
        let (day, _) = self.dataSource.dayInformation(indexPath: today)
        let section = today.section - day.rawValue
        
        guard self.collectionView.numberOfSections >= section else {
            return
        }
        
        // scroll to item
        let xPos = self.layout.xPosition(ofSection: section)
        self.collectionView.setContentOffset(CGPoint(x: xPos, y: self.collectionView.contentOffset.y), animated: animated)
    }
    
}

// MARK: - ScheduleWeekLayoutDataSource
extension ScheduleWeekVC: ScheduleWeekLayoutDataSource {
	var widthPerDay: CGFloat {
		let numberOfDays = 6
		return self.view.bounds.width / CGFloat(numberOfDays)
	}

	var height: CGFloat {
        let height = (self.tabBarController?.tabBar.top).map { $0 - (self.navigationController?.navigationBar.bottom ?? 0) }
		return height ?? self.collectionView.height
	}

	var endHour: CGFloat {
		return 21.3
	}

	func dateComponentsForItem(at indexPath: IndexPath) -> (begin: DateComponents, end: DateComponents)? {
		guard let item = self.dataSource.lecture(at: indexPath) else {
			return nil
		}
		return (item.lecture.begin, item.lecture.end)
	}
    
    var todayIndexPath: IndexPath? {
        return self.dataSource.indexPathOfToday
    }
}

extension ScheduleWeekVC: ScheduleDataSourceDelegate {
    
    func scheduleDataSourceHasFinishedLoading() {
        // we explicitly need to wait for the next run loop
        self.scrollToToday(animated: false)
    }
    
    func scheduleDataSourceHasUpdated() {
        
    }
    
}

extension ScheduleWeekVC: TabbarChildViewController {
    func tabbarControllerDidSelectAlreadyActiveChild() {
        self.jumpToToday()
    }
}
