import DebugHead

class DebugHeadTest: DebugMenu {
  static let debugMenuTitle = "exit"
  static let debugMenuDangerLevel = DebugMenuDangerLevel.Extreme
  static let debugMenuAccessoryType = UITableViewCellAccessoryType.None
  static func debugMenuSelected(debugMenuTableViewController: UITableViewController) -> UIViewController? {
    let alert = UIAlertController(title: "Exit", message: nil, preferredStyle: .Alert)
    alert.addAction(UIAlertAction(title: "ok", style: .Default, handler: { _ in
      exit(1)
    }))
    debugMenuTableViewController.presentViewController(alert, animated: true, completion: nil)
    return nil
  }
}