//
//  OnboardWelcomeViewController.swift
//  HTWDD
//
//  Created by Fabian Ehlert on 12.10.17.
//  Copyright © 2017 HTW Dresden. All rights reserved.
//

import UIKit

class OnboardWelcomeViewController: ViewController {

	var onContinue: ((OnboardWelcomeViewController) -> Void)?

	// MARK: - ViewController lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

	override func initialSetup() {

		// --- Title label ---

		let titleLabel = UILabel()
		titleLabel.font = .systemFont(ofSize: 45, weight: .bold)
		titleLabel.textAlignment = .left
		titleLabel.numberOfLines = 2
		titleLabel.translatesAutoresizingMaskIntoConstraints = false

		let welcome = NSMutableAttributedString(string: "Welcome to\nHTW")
		welcome.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor.htw.textHeadline, range: NSRange(location: 0, length: 11))
		welcome.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor.htw.orange, range: NSRange(location: 11, length: 3))
		titleLabel.attributedText = welcome

		let titleContainer = UIView()
		titleContainer.translatesAutoresizingMaskIntoConstraints = false
		titleContainer.addSubview(titleLabel)
		self.view.addSubview(titleContainer)

		// --- Description box ---

		let descriptions: [(String, String)] = [
			("Schedule", "Your schedule shows you all your lectures."),
			("Canteen", "See what is being served for lunch in the canteens around you."),
			("Grades", "View what your professors graded you in your exams.")
		]
		let stackViews: [UIStackView] = descriptions.map { descPair in

			let title = UILabel()
			title.text = descPair.0
			title.font = .systemFont(ofSize: 20, weight: .semibold)
			title.textColor = UIColor.htw.textHeadline

			let desc = UILabel()
			desc.text = descPair.1
			desc.font = .systemFont(ofSize: 17, weight: .medium)
			desc.textColor = UIColor.htw.textBody
			desc.numberOfLines = 0

			let s = UIStackView(arrangedSubviews: [title, desc])
			s.axis = .vertical

			return s
		}

		let descriptionStackView = UIStackView(arrangedSubviews: stackViews)
		descriptionStackView.translatesAutoresizingMaskIntoConstraints = false
		descriptionStackView.axis = .vertical
		descriptionStackView.distribution = .fillProportionally
		descriptionStackView.spacing = 20.0
		self.view.addSubview(descriptionStackView)

		// --- Continue Button ---

		let continueButton = ReactiveButton()
		continueButton.setTitle("Continue", for: .normal)
		continueButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
		continueButton.backgroundColor = UIColor.htw.blue
		continueButton.layer.cornerRadius = 12
		continueButton.translatesAutoresizingMaskIntoConstraints = false
		continueButton.addTarget(self, action: #selector(continueBoarding), for: .touchUpInside)
		self.view.addSubview(continueButton)

		// --- Constraints ---

		NSLayoutConstraint.activate([
			titleContainer.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
			titleContainer.bottomAnchor.constraint(equalTo: descriptionStackView.topAnchor),
			titleContainer.widthAnchor.constraint(equalTo: descriptionStackView.widthAnchor),

			titleLabel.leadingAnchor.constraint(equalTo: titleContainer.leadingAnchor),
			titleLabel.centerYAnchor.constraint(equalTo: titleContainer.centerYAnchor),

			descriptionStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
			descriptionStackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
			descriptionStackView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8),

			continueButton.heightAnchor.constraint(equalToConstant: 55),
			continueButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
			continueButton.widthAnchor.constraint(equalTo: descriptionStackView.widthAnchor)
			])

		var top = NSLayoutConstraint()
		var bottom = NSLayoutConstraint()
		if #available(iOS 11.0, *) {
			top = titleContainer.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 12)
			bottom = continueButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
		} else {
			top = titleContainer.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 12)
			bottom = continueButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20)
		}
		NSLayoutConstraint.activate([top, bottom])
	}

	// MARK: - Actions

	@objc private func continueBoarding() {
		self.onContinue?(self)
	}

}