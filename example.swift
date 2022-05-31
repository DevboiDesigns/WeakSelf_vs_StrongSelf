class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Done", style: .cancel, handler: { [weak self] _ in
    //1 When referencing back to parent object, best practice to release the child object with weak reference to self
      self?.doSomething()

    //2 Optionally: Unwrap self to strong - still retains memory 
    guard let self = self else { return }
      self.doSomething()

    }))
    present(alert, animated: true)
  }

  private func doSomething() {

  }


}