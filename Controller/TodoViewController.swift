//
//  TodoViewController.swift
//  SwissKnife
//
//  Created by Daniel Martinsson on 2018-04-19.
//  Copyright © 2018 Georgios. All rights reserved.
//

import UIKit

class TodoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var todoArray : [String] = []
    let defaults = UserDefaults.standard
    let key = "todos"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.dataSource = self
        self.tableView.delegate = self
        tableView.reloadData()
    }
    override func viewDidAppear(_ animated: Bool) {
        todoArray = defaults.stringArray(forKey: "todos") ?? [String]()
        tableView.reloadData()
        }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    @IBAction func addButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "Add a new todo", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Input your todo here..."
        })
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            
            if let todo = alert.textFields?.first?.text {
                self.todoArray.append(todo)
                print(self.todoArray)
                print("Todo: \(todo)")
                self.defaults.set(self.todoArray, forKey: self.key)
                self.tableView.reloadData()

            }
        }))
        
        self.present(alert, animated: true)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! customTodoCell
        cell.todoLabel.text = todoArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            todoArray.remove(at: indexPath.row)
            print(todoArray)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
            self.defaults.set(self.todoArray, forKey: self.key)
        }
    }
    
    
    
}
