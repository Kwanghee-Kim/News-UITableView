//
//  ViewController.swift
//  News&UITableView
//
//  Created by 김광희 on 2021/05/14.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var TableViewMain: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 데이터 수
        return 10
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 데이터 종류
        // cell? -> table view cell
        // return 10 이므로 table view cell 10줄 반복
        // 총 2가지 방법 1번 방법 -> 임의의 셀 만들기
        // let cell = UITableViewCell.init(style: .default, reuseIdentifier: "TableCellType1")
        // 2번 방법 -> 스토리보드 + identifier 를 이용한 방법
        
        let cell = TableViewMain.dequeueReusableCell(withIdentifier: "Type1", for: indexPath) as! TableViewType1
        cell.LabelText.text = "\(indexPath.row)"
        
        // as? as! -> 부모 자식 인스턴스 간 친자확인
        // 텍스트를 넣기 위해 접근해야 하는 곳 => Type1 cell 내의 LabelText
        // 접근 루트 => TableViewType1 (Type1 의 클래스)
        // dequeueReusableCell 의 반환갑은 UITableViewCell 이고 TableViewType1 은 UITableViewCell 을 상속받았으나
        // LabelText 는 UITableViewCell 가 아닌 TableViewType1 에 위치하고 있기 떄문에 as 를 통해
        // 반환값을 UITableViewCell 에서 TableViewType1 로 바꿔줘야 함
        return cell
            
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You did select a row at \(indexPath.row)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TableViewMain.delegate = self
        TableViewMain.dataSource = self
        // self -> class 안에 내가 구현해 놓은 func 을 의미
    }

    
    //tableview 테이블로 된 뷰 = 여러개의 행이 모여있는 목록 뷰(화면)
    //tableview 테이블로 된 뷰 = 여러개의 행이 모여있는 목록 뷰(화면)
    //tableview 테이블로 된 뷰 = 여러개의 행이 모여있는 목록 뷰(화면)
    //tableview 테이블로 된 뷰 = 여러개의 행이 모여있는 목록 뷰(화면)
    
    //tableview 쓰는 이유 = 정결하게 보기 위해 (예) 전화번호부 등
    /* 필요 요소
      1. 데이터 종류 - 전화번호부 목록  중요!
      2. 데이터 수 - 등록된 전화번호 수  중요!
      3. (옵션) 데이터 행을 눌렀다! - 클릭 */
 
 
}


