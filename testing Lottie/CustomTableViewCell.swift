//
//  CustomTableViewCell.swift
//  testing Lottie
//
//  Created by Abdalla Ahmed Shawky Abdo on 20.06.23.
//

import UIKit
import Lottie

class CustomTableViewCell: UITableViewCell {

  @IBOutlet weak var lottieView: UIView!

  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    let animationView = LottieAnimationView(name: "coffee")

    lottieView.addSubview(animationView)
    animationView.frame = lottieView.bounds

    LottieAnimation.loadedFrom(url: URL(string: "https://assets5.lottiefiles.com/packages/lf20_iYJU6Nw4yv.json")!, closure:  { animation in
      animationView.animation = animation
      animationView.play()
      animationView.loopMode = .loop
    }, animationCache: DefaultAnimationCache.sharedCache)
  }
}
