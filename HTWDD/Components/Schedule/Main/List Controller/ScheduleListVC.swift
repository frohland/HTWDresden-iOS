//
//  ScheduleListVC.swift
//  HTWDD
//
//  Created by Fabian Ehlert on 30.10.17.
//  Copyright © 2017 HTW Dresden. All rights reserved.
//

import UIKit
import RxSwift

final class ScheduleListVC: ScheduleBaseVC {

    enum Const {
        static let margin: CGFloat = 12
    }

    private let collectionViewLayout = CollectionViewFlowLayout()

	// MARK: - Init

	init(configuration: ScheduleDataSource.Configuration) {
        var config = configuration
        config.originDate = nil
        config.numberOfDays = nil
        config.shouldFilterEmptySections = true
		super.init(configuration: config, layout: self.collectionViewLayout, startHour: 6.5)
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	override func initialSetup() {
        super.initialSetup()
        
        self.collectionView.contentInset = UIEdgeInsets(top: Const.margin, left: Const.margin, bottom: Const.margin, right: Const.margin)

		self.collectionView.isDirectionalLockEnabled = true

		self.dataSource.register(type: LectureListCell.self)
        self.dataSource.register(type: FreeDayListCell.self)
        
        self.dataSource.registerSupplementary(CollectionHeaderView.self, kind: .header) { [weak self] view, indexPath in
            let info = self?.dataSource.dayInformation(indexPath: indexPath)
            let date = NSAttributedString(string: info?.date.string(format: "d. MMMM").uppercased() ?? "",
                                          attributes: [.foregroundColor: UIColor.htw.textBody, .font: UIFont.systemFont(ofSize: 14, weight: .semibold)])
            let separator = NSAttributedString(string: "\n")
            let day = NSAttributedString(string: info?.date.string(format: "EEEE") ?? "",
                                         attributes: [.foregroundColor: UIColor.htw.textHeadline, .font: UIFont.systemFont(ofSize: 26, weight: .bold)])

            let attributedTitle = NSMutableAttributedString()
            attributedTitle.append(date)
            attributedTitle.append(separator)
            attributedTitle.append(day)
            
            view.attributedTitle = attributedTitle
            view.titleInset = Const.margin
        }

		self.dataSource.delegate = self
    }

    override func headerText(day: Day, date: Date) -> String {
        let weekdayLoca = super.headerText(day: day, date: date)
        let dateString = date.string(format: "d. MMMM")
        return "\(weekdayLoca) - \(dateString)"
    }

    override func jumpToToday() {
        self.scrollToToday(animated: true)
    }

    private func scrollToToday(animated: Bool) {
        guard let indexPath = self.dataSource.indexPathOfToday else {
            return
        }

        guard self.collectionView.numberOfSections >= indexPath.section else {
            return
        }

        // scroll to header
        let offsetY = self.collectionView.layoutAttributesForSupplementaryElement(ofKind: UICollectionElementKindSectionHeader, at: indexPath)?.frame.origin.y ?? 0
        self.collectionView.setContentOffset(CGPoint(x: self.collectionView.contentOffset.x, y: offsetY), animated: animated)
    }
    
}

extension ScheduleListVC {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: self.itemWidth(collectionView: collectionView), height: 90)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.itemWidth(collectionView: collectionView)
        
        let height = self.dataSource.height(width: width, indexPath: indexPath) ?? 100
        return CGSize(width: width, height: height)
    }

}

extension ScheduleListVC: ScheduleDataSourceDelegate {

    func scheduleDataSourceHasFinishedLoading() {
        // we explicitly need to wait for the next run loop
        DispatchQueue.main.async {
            self.scrollToToday(animated: false)
        }
    }

    func scheduleDataSourceHasUpdated() {

    }

}

extension ScheduleListVC: TabbarChildViewController {

    func tabbarControllerDidSelectAlreadyActiveChild() {
        self.scrollToToday(animated: true)
    }

}