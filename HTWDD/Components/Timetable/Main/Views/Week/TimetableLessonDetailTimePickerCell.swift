//
//  TimetableLessonDetailTimePickerCell.swift
//  HTWDD
//
//  Created by Chris Herlemann on 08.01.21.
//  Copyright © 2021 HTW Dresden. All rights reserved.
//

class TimetableLessonDetailTimePickerCell: UITableViewCell, FromNibLoadable {
    
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var lessonDetailsSelectionField: TimePickerTextField!
    @IBOutlet weak var main: UIView!
    
    weak var delegate: TimetableLessonDetailsDelegateCellDelegate?
    
    var lessonElement: LessonDetailElements! {
        didSet{
            iconView.image = lessonElement.iconImage
            iconView.tintColor = UIColor.htw.Icon.primary
            lessonDetailsSelectionField.selectionDelegate = self
            lessonDetailsSelectionField.placeholder = lessonElement.placeholder
            lessonDetailsSelectionField.datePicker.datePickerMode = lessonElement == LessonDetailElements.day ? .date : .time
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        main.backgroundColor = UIColor.htw.cellBackground
        self.selectionStyle = .none
    }
    
    func setup(model: CustomLesson, isEditable: Bool) {
        
        lessonDetailsSelectionField.isEnabled = isEditable
        
        switch lessonElement {
        case .day:
            lessonDetailsSelectionField.text = model.lessonDays.first
        case .startTime: lessonDetailsSelectionField.text = String(model.beginTime?.dropLast(3) ?? "")
        case .endTime: lessonDetailsSelectionField.text = String(model.endTime?.dropLast(3) ?? "")
        default: break
        }
    }
}

extension TimetableLessonDetailTimePickerCell: TimePickerTextFieldDelegate {
    func valueChanged(_ newValue: Date) {
        print(newValue)
        delegate?.changeValue(forElement: lessonElement, newValue)
    }
    
}

protocol TimePickerTextFieldDelegate: class {
    func valueChanged(_ newValue: Date)
}

class TimePickerTextField: UITextField, UIPickerViewDelegate, UITextFieldDelegate {
    
    var datePicker = UIDatePicker()
    weak var selectionDelegate: TimePickerTextFieldDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.delegate = self
        createDropDownIcon()
        createPickerView()
        dismissPickerView()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {

        guard textField.text == "" else { return }
        
        let timeFormatter = DateFormatter()
        timeFormatter.timeStyle = .short
        self.text = timeFormatter.string(from: datePicker.date)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        valueChanged(datePicker)
    }
    
    func createDropDownIcon() {
        let iconView = UIImageView(frame:
                                    CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = UIImage(named: "Down")
        iconView.tintColor = UIColor.htw.Icon.primary
        let iconContainerView: UIView = UIView(frame:
                                                CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        
        rightView = iconContainerView
        rightViewMode = .always
    }
    
    func createPickerView() {
        self.inputView = datePicker
        datePicker.datePickerMode = .time
        if #available(iOS 14, *) {
            datePicker.preferredDatePickerStyle = UIDatePickerStyle.wheels
        }
        
        datePicker.addTarget(self, action: #selector(valueChanged), for: .editingChanged)
    }
    
    func dismissPickerView() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let button = UIBarButtonItem(title: R.string.localizable.done(), style: .plain, target: self, action: #selector(done))
        toolBar.setItems([button], animated: true)
        toolBar.isUserInteractionEnabled = true
        self.inputAccessoryView = toolBar
    }
    
    @objc func valueChanged(_ datePicker: UIDatePicker) {
        
        if datePicker.datePickerMode == .date {
            self.text = datePicker.date.localized
        } else {
            
            let timeFormatter = DateFormatter()
            timeFormatter.timeStyle = .short
            self.text = timeFormatter.string(from: datePicker.date)
        }
        
        selectionDelegate?.valueChanged(datePicker.date)
    }
    
    @objc func done() {
        self.endEditing(true)
    }
    
}