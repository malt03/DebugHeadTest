import DebugHead

public class DebugHeadTest: DebugMenu {
  public static let debugMenuTitle = "exit"
  public static let debugMenuDangerLevel = DebugMenuDangerLevel.Extreme
  public static let debugMenuAccessoryType = UITableViewCellAccessoryType.None
  public static func debugMenuSelected(debugMenuTableViewController: UITableViewController) -> UIViewController? {
    let alert = UIAlertController(title: "Exit", message: nil, preferredStyle: .Alert)
    alert.addAction(UIAlertAction(title: "ok", style: .Default, handler: { _ in
      exit(1)
    }))
    debugMenuTableViewController.presentViewController(alert, animated: true, completion: nil)
    return nil
  }
}