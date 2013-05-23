class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    ctlr = MyController.new
    @window.rootViewController = ctlr
    @window.makeKeyAndVisible
    true
  end
end


class MyController < UIViewController

  layout do
    @collection_view = subview(UICollectionView.alloc.initWithFrame(self.view.bounds, collectionViewLayout:UICollectionViewFlowLayout.new),
      dataSource: self,
      delegate: self,
      frame: :full,
      )

    @collection_view.registerClass(WidgetCell, forCellWithReuseIdentifier:'widget_cell')

    @data = ['thing', 'thing', 'thing', 'thing', 'thing', 'thing', 'thing',
    'thing', 'thing', 'thing', 'thing', 'thing', 'thing', 'thing', 'thing',
    'thing', 'thing', 'thing', 'thing', 'thing', 'thing', 'thing', 'thing',
    'thing', 'thing', 'thing', 'thing', 'thing', 'thing', 'thing', 'thing',
    'thing', 'thing', 'thing', 'thing', 'thing', 'thing', 'thing', 'thing',
    'thing', 'thing', 'thing', 'thing', 'thing', 'thing', 'thing', 'thing',
    'thing', 'thing', 'thing', 'thing', 'thing', 'thing', 'thing', 'thing',
    'thing', ]
  end

  def numberOfSectionsInCollectionView(collection_view)
    1
  end

  def collectionView(collection_view, numberOfItemsInSection:section)
    @data.length
  end

  def collectionView(collection_view, cellForItemAtIndexPath:path)
    collection_view.dequeueReusableCellWithReuseIdentifier('widget_cell', forIndexPath:path).tap do |cell|
      cell.name_label.text = @data[path.item]
    end
  end

  # def collectionView(collection_view, viewForSupplementaryElementOfKind:kind, atIndexPath:path)
  # end

end
