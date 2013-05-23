class WidgetCell < UICollectionViewCell
  attr :name_label

  def initWithFrame(frame)
    super.tap do
      @name_label = UILabel.alloc.initWithFrame(self.bounds).tap do |label|
         label.numberOfLines = 0
         label.font = UIFont.boldSystemFontOfSize(17.0)
         label.textAlignment = UITextAlignmentCenter
         label.backgroundColor = UIColor.clearColor
         label.textColor = UIColor.whiteColor
         label.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin
      end
      self.contentView.addSubview(@name_label)
    end
  end

end
