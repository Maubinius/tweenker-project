   M S B A M L   `   `   `  ����C  ?Tweenker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:TweenkerTweenker  5   	       Tweenker.MainWindow   5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Tweenker     5   	     � Title$  
MainWindow��5	   	   $	��750��5
   	   $
��1200��5   	   $	��750��5   	   $
��1200��5   	    � WindowStartupLocation$ CenterScreen=�5   	   .��5      � -   5        $��MainView��5   	   .+�5   
   � -   5        $��StaticControls��5   	   .+�5      � -   5        $��leftcontainer��5      $
��Left=�5      $��0 0 0 60q�5      .+�5      ��  �� Orientation$ Vertical=�6   $
��Left=�5      $��60��5      ���#2b2b2b.+�5!      �� -   5         ��Name$ homeB��5"      
������  � Cursor$
 Hand��5%      $��60��5&      $
��Auto��5'         MaterialDesignToolButton#��[  5(      .��5*      �� $��img/logo.png��5+       �� BitmapScalingMode$ HighQuality=�5,       �� EdgeMode$ Aliased=�5-       � UseLayoutRounding . 5.      50      �� 51      -   5        $
��addB��52      $��0 8 0 0q�54      $
��Auto��55      $��60��56      $��0q�57      
������ 
�������#��[  5;       � ToolTip$ Add a Playlist��5<      $
 Hand��6.   ��59      0  *MaterialDesignThemes.Wpf.PackIconExtension  *	PlusThick+	   Size$	 37X�5=      �� 5?      -   5        $
��favB��5@      $��0 5 0 0q�5B      $
��Auto��5C      $��60��5D      $��0q�5E      
������ 
�������#��[  5I      $ Favorite Songs��5J      ��5G        *
CardsHeart+$	 31X�5K      5L      �� 5M      $
��Left=�5N      $��Bottom=�5O      $��60��5P      $��60��5Q      $��0q�5R      
������ 
�������#��[  5V      $ Settings��5W      ��5T        *Cog+$	 33X�5X      5Y      � 5]      -   5        $��rightcontainer��5_      $��Right=�5^      $��0 0 0 60q�5`      .+�5b      �� $ Vertical=�5c      $	��200��5d      ���#2b2b2b.+�5g      �� $��Hey, Adrian��5h      
�������$��20(�5j      $��4 5 0 5q�5k      � 5m      $��2��5n      ���#3b3b3b5o      5q      �� 5r      $��	0 46 0 45q�5s      $
��Auto=�5t      $��Disabled=�5u      
 � 	Resources
 5w        ScrollThumbs �� 
TargetType �� Property �� Value �� 
TargetType �Name ��Name �� CornerRadius �� Triggers P� Property P� Value �� 
TargetName ]�Name ]� Thumb n�Name ]� IncreaseRepeatButton ��Name J� Opacity ]� DecreaseRepeatButton �� Angle��%&  &	       '�� [    7  �� 5x      " n�65   .�5y      ��  � �� 5z   "   �� 5{   &   " n�66   .R�5|   *   � $
 Grid��6/   .+�5}   .   �� $��Stretch=�68   $��Stretch=�6V   $
��Auto��6r   $
��Auto��6   
������ 6�   �� 5~   .   $ ScrollBarRectangle��65   $ 5��6Q   $��Stretch=�6b   $��Stretch=�6�   $
��Auto��6�   $
��Auto��6�   #��z��6�   5   +    5�   *   P� 5�   .    �@�Tag$ 
Horizontal��6E   . �5�   2   �� $ ScrollBarRectangle��69    � ��$
 Auto��6j   �� 5�   2   $ ScrollBarRectangle��69    � ��$ 7��6k   5�   /   5�   '   5�      5�      �� 5�      " ��6    .�5�      ��  � ��$ -5,0,0,0q�67   �� 5�       �@��IsFlicksEnabled .  6G   �� 5�       � �� �	#FF8C8C8C6;   �� 5�       � ��
 ���� 6;   �� 5�       � ��$ 8��66   �� 5�       � �� 5�   "   �� 5�   &   " ��66   .R�5�   *   � $ GridRoot��6/   $��8��6A   #��z��6K   .+�5�   .   ]� $ 
PART_Track��64   ��. |�.   5�   2   n� 5�   6   $ ScrollBarThumb��6<   #��z��6T   8��  6~    5�   2   �� 5�   6   $ PageUp��6C   $��ScrollBar.PageDownCommand��6S   $ 0Q�6w   |�.  6�    5�   2   �� 5�   6   $ PageDown��6C   $��ScrollBar.PageUpCommand��6U   $ 0Q�6w   |�.  6�   5�   /   5�   +    5�   *   P� 5�   .    � {� .  . �5�   2   �� $ ScrollBarThumb��69    � y�$ 	Collapsed=�6k   5�   /   P� 5�   .    �@��Orientation$ 
Horizontal=�6M   . �5�   2   �� $ GridRoot��69    �@�LayoutTransform 5�   6   �� 5�   :   $	 -90Q�6J   5�   3   �� 5�   2   $ 
PART_Track��69    �@�LayoutTransform 5�   6   �� 5�   :   $	 -90Q�6J   5�   3   �� 5�   2    � ��$
 Auto��6J   �� 5�   2    � ��$ 8��6K   �� 5�   2   $ ScrollBarThumb��69    �@�Tag$ 
Horizontal��6d   �� 5�   2   $ PageDown��69    � ��$ ScrollBar.PageLeftCommand��6b   �� 5�   2   $ PageUp��69    � ��$  ScrollBar.PageRightCommand��6`   5�   /   5�   '   5�      5�      5�      .��5�      � -   5        $��playlistList��5�   )    � Orientation$ Vertical=�5�      5�      5�      #  MaterialDesignThemes.Wpf.Card  5�      $��Bottom=�5�      $��45��5�      ���#2b2b2b+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowEdges$	 Top=�5�          ShadowDepth$  Depth2=�5�      .��5�      � .+�5�      �� -	   5        $��	startTime��5�      $
��Left=�5�      $��Center=�5�      
�������$��16(�5�      $��00:00��5�      $��35 0 0 0q�5�      5�      �� 5�      -
   5        $��endTime��5�      $��Right=�5�      $��Center=�5�      
�������$��16(�5�      $��00:00��5�      $��0 0 35 0q�5�      5�      � 5�      
�������$��1��5�      $��Center=�5�      $��Center=�5�      $��20��5�      5�       5�      5�      � 5�      $
��Left=�5�      $��1��5�      ���#368ab95�      5�      5�      � 5�   
   -   5        $��AddView��5�      $��
60 0 200 0q�5�      ���#404040$y�Hidden=�5�      .+�5�      � $	��Top=�5�      $	��400��5�      ���#606060.+�5�      �� -   5        $��	bannerImg��5�      $ HighQuality=�5�      $ Aliased=�5�       . $
��Fill=�5�      $	��400��5�      5�      �� 5      $��Add Playlist��5     
�������$��30(�5     $��	30 20 0 0q�5     $	��Top=�5     $
��Left=�5       5     $	��Top=�5	     $
��Left=�5
     $��	30 85 0 0q�5     $	��250��5     $	��250��5     ���#707070.��5     �� -   5        $��
profileImg��5     $ HighQuality=�5  )   $ Aliased=�5      . $
��Fill=�5     5     5     �� 5     -   5        $��nameTB��5     $
��Left=�5     $ IBeam��5     $	��Top=�5     $��
310 85 0 0q�5     $	��200��5     ���#707070$��18(�5      
�������)  #MaterialDesignThemes.Wpf.HintAssist!   Hint$!  Name��5"     5#     �� 5$     -   5        $��bioTB��5%     $ IBeam��5&     $	��Top=�5'     $��310 130 20 0q�5(     $
��Auto��5)     ���#707070$��18(�5+     
�������$
!  Bio��5-     $	��200��5.     " �� TextWrapping$
" Wrap=�5/     # �� AcceptsReturn# . 52     �� 53     -   5        $��chooseBanner��55     $��Right=�56     $	��Top=�57     $��Choose Banner��58     $��10q�59     ���#707070$��0q�5;     5<     �� 5>     -   5        $��choosePicture��5@     $
��Left=�5A     $��Bottom=�5B     $��	90 0 0 20q�5C     $	��125��5D     $��Choose��5E     ���#707070$��0q�5G     5H     �� 5J     -   5        $��addPlaylistB��5K     $��Right=�5M     $��Bottom=�5N     $��	0 0 20 20q�5O     $	��100��5P     $	��Add��5Q     $��0q�5R     $
 Hand��6)   5S     �� 5U     -   5        $��clearB��5V     $��Right=�5X     $��Bottom=�5Y     $��
0 0 140 20q�5Z     $	��100��5[     $��Clear��5\     ���#707070$��0q�5^     5_     5`     � 5a     $��Center=�5b     $��Center=�5c     $��	0 350 0 0q�5d     .+�5f     �� 
���������5h       $   Kind$$ Update=�$		 160X�5i     �� 5j     2  ,System.Windows.Markup.XmlAttributeProperties%  XmlSpace% preserve5n     
�������$��30(�5l     $��40 6 0 0q�5n     us
                Unfortunately there is nothing here yet, 
                wait for the next update :)
            5r     5s     5t     � 5u  
   -   5        $��ClickPlaylist��5v     $��
60 0 200 0q�5w     ���#404040$y�Hidden=�5y     .+�5{     �� $��0 0 0 60q�5|     
������ $
��Auto=�5~     $��Disabled=�5     
 5�     ��%&  &	       '�� [    7  �� 5�     " n�61   .�5�     ��  � �� 5�     �� 5�  "   " n�62   .R�5�  &   � $
 Grid��6+   .+�5�  *   �� $��Stretch=�64   $��Stretch=�6R   $
��Auto��6n   $
��Auto��6{   
������ 6�   �� 5�  *   $ ScrollBarRectangle��61   $ 5��6M   $��Stretch=�6^   $��Stretch=�6|   $
��Auto��6�   $
��Auto��6�   #��z��6�   5�  '    5�  &   P� 5�  *    �@�Tag$ 
Horizontal��6A   . �5�  .   �� $ ScrollBarRectangle��65    � ��$
 Auto��6f   �� 5�  .   $ ScrollBarRectangle��65    � ��$ 7��6g   5�  +   5�  #   5�     5�     �� 5�     " ��6   .�5�     ��  � ��$ -5,0,0,0q�63   �� 5�      �@��IsFlicksEnabled .  6C   �� 5�      � �� �	#FF8C8C8C67   �� 5�      � ��
 ���� 67   �� 5�      � ��$ 8��62   �� 5�      � �� 5�     �� 5�  "   " ��62   .R�5�  &   � $ GridRoot��6+   $��8��6=   #��z��6G   .+�5�  *   ]� $ 
PART_Track��60   ��. |�.   5�  .   n� 5�  2   $ ScrollBarThumb��68   #��z��6P   8��  6z    5�  .   �� 5�  2   $ PageUp��6?   $��ScrollBar.PageDownCommand��6O   $ 0Q�6s   |�.  6    5�  .   �� 5�  2   $ PageDown��6?   $��ScrollBar.PageUpCommand��6Q   $ 0Q�6s   |�.  6   5�  +   5�  '    5�  &   P� 5�  *    � {� .  . �5�  .   �� $ ScrollBarThumb��65    � y�$ 	Collapsed=�6g   5�  +   P� 5�  *    �@��Orientation$ 
Horizontal=�6I   . �5�  .   �� $ GridRoot��65    �@�LayoutTransform 5�  2   �� 5�  6   $	 -90Q�6F   5�  /   �� 5�  .   $ 
PART_Track��65    �@�LayoutTransform 5�  2   �� 5�  6   $	 -90Q�6F   5�  /   �� 5�  .    � ��$
 Auto��6F   �� 5�  .    � ��$ 8��6G   �� 5�  .   $ ScrollBarThumb��65    �@�Tag$ 
Horizontal��6`   �� 5�  .   $ PageDown��65    � ��$ ScrollBar.PageLeftCommand��6^   �� 5�  .   $ PageUp��65    � ��$  ScrollBar.PageRightCommand��6\   5�  +   5�  #   5�     5�     5�     .��5�     � .+�5�     � $	��Top=�5�     $	��320��5�     ���#606060.+�5�     �� -   5        $��cpBanner��5�     $ HighQuality=�5�     $ Aliased=�5�      . $
��Fill=�5�     5�     5�       5�     $	��Top=�5�     $
��Left=�5�     $��	30 35 0 0q�5�     $	��250��5�     $	��250��5�     ���#707070.��5�     �� -   5        $��	cpProfile��5�     $ HighQuality=�5�     $ Aliased=�5�      . $
��Fill=�5�     5�     5�     �� 5�     -   5        $��cpName��5�     $	��Top=�5�     $
��Left=�5�     $
��Name��5�     
�������$��
300,35,0,0q�5�     $��32(�5�     $	��600��5�     $
��Auto��5�     5�     �� 5�     -   5        $��cpBio��5�     $	��Top=�5�     $
��Left=�5�     $
��Text��5�     
�������$��
300 80 0 0q�5�     $��18(�5�     $	��600��5�     $	��200��5�     5�     � 5�     $	��Top=�5�     $��	0 320 0 0q�5�     $��50��5�     .+�5�     �� $��Center=�5      $
��Left=�5     
�������$��40 0 0 0q�5     $��18(�5     $	��360��5     & �� TextAlignment$
& Left=�5     $
��Name��5     $��SemiBold"�5     5	     �� 5     $	��360��5     $��Center=�5     $��Right=�5     
�������$��	0 0 120 0q�5     $��18(�5     $& Right=�5     $
��Memo��5     $��SemiBold"�5     5     �� 5     $��Center=�5     $��Right=�5     
�������$��0 0 30 0q�5     $��18(�5     $��Duration��5     $��SemiBold"�5     5     � 5      $��1��5!     
�������$��Bottom=�5#     $��	40 0 30 0q�5$     5%     5&     �� 5(     -   5        $��
cpsongList��5*     $ Vertical=�5)     $��	0 370 0 0q�5+     5,     5.     5/     50     � 51  
   -   5        $ HomeView��52     $��
60 0 200 0q�53     ���#404040$y�Visible=�55     .+�57     � $	��Top=�58     $��65��59     ���#303030.+�5<     �� $��Welcome to Tweenker��5=     
�������$��35(�5?     $��Center=�5@     $	��Top=�5A     $��0 8 0 0q�5B     5C     �� 5D     $"��Listen to the Music you love��5E     
�������$��25(�5G     $��Center=�5H     $	��Top=�5I     $��0 62 0 0q�5J     5K     �� 5L     -   5        $��addSongB��5M     $��Right=�5O     $��Center=�5P     $��0 0 10 0q�5Q     #��[  5R     
�������$��Center=�5U     $��Center=�5V     $��50��5W     $��50��5X     ��5S       $
$ Plus=�$	 30X�5Y     5Z       5[     $	��Top=�5\     $��0 65 0 0q�5]     $��2��5^     $ Bottom=�5_     $  Depth2=�5`     ��5b     
� 5c     .��5d     � ' � Color$' 	#FF303030��6'   ( � Offset$	( 0.1Q�69   � 5e     $' 	#FF606060��6'   $	( 0.5Q�69   � 5f     $' 	#FF303030��6'   $	( 0.9Q�69   5g     5i     � 5j     $��50��5k     $
��Auto��5l     
������ $	��Top=�5n     $��
30 70 30 0q�5o     .+�5q     � .+�5r     �� $��Center=�5s     $
��Left=�5t     
�������$��10 0 0 0q�5v     $��18(�5w     $	��360��5x     $
& Left=�5y     $
��Name��5z     $��SemiBold"�5{     5|     �� 5~     $	��360��5     $��Center=�5�     $��Right=�5�     
�������$��	0 0 100 0q�5�     $��18(�5�     $& Right=�5�     $
��Memo��5�     $��SemiBold"�5�     5�     �� 5�     $��Center=�5�     $��Right=�5�     
�������$��0 0 10 0q�5�     $��18(�5�     $��Duration��5�     $��SemiBold"�5�     5�     � 5�     $��1��5�     
�������$��Bottom=�5�     5�     5�     5�     �� 5�     $��
0 120 0 60q�5�     
������ $
��Auto=�5�     $��Disabled=�5�     
 5�     ��%&  &	       '�� [    7  �� 5�     " n�61   .�5�     ��  � �� 5�     �� 5�  "   " n�62   .R�5�  &   � $
 Grid��6+   .+�5�  *   �� $��Stretch=�64   $��Stretch=�6R   $
��Auto��6n   $
��Auto��6{   
������ 6�   �� 5�  *   $ ScrollBarRectangle��61   $ 5��6M   $��Stretch=�6^   $��Stretch=�6|   $
��Auto��6�   $
��Auto��6�   #��z��6�   5�  '    5�  &   P� 5�  *    �@�Tag$ 
Horizontal��6A   . �5�  .   �� $ ScrollBarRectangle��65    � ��$
 Auto��6f   �� 5�  .   $ ScrollBarRectangle��65    � ��$ 7��6g   5�  +   5�  #   5�     5�     �� 5�     " ��6   .�5�     ��  � ��$ -5,0,0,0q�63   �� 5�      �@��IsFlicksEnabled .  6C   �� 5�      � �� �	#FF8C8C8C67   �� 5�      � ��
 ���� 67   �� 5�      � ��$ 8��62   �� 5�      � �� 5�     �� 5�  "   " ��62   .R�5�  &   � $ GridRoot��6+   $��8��6=   #��z��6G   .+�5�  *   ]� $ 
PART_Track��60   ��. |�.   5�  .   n� 5�  2   $ ScrollBarThumb��68   #��z��6P   8��  6z    5�  .   �� 5�  2   $ PageUp��6?   $��ScrollBar.PageDownCommand��6O   $ 0Q�6s   |�.  6    5�  .   �� 5�  2   $ PageDown��6?   $��ScrollBar.PageUpCommand��6Q   $ 0Q�6s   |�.  6   5�  +   5�  '    5�  &   P� 5�  *    � {� .  . �5�  .   �� $ ScrollBarThumb��65    � y�$ 	Collapsed=�6g   5�  +   P� 5�  *    �@��Orientation$ 
Horizontal=�6I   . �5�  .   �� $ GridRoot��65    �@�LayoutTransform 5�  2   �� 5�  6   $	 -90Q�6F   5�  /   �� 5�  .   $ 
PART_Track��65    �@�LayoutTransform 5�  2   �� 5�  6   $	 -90Q�6F   5�  /   �� 5�  .    � ��$
 Auto��6F   �� 5�  .    � ��$ 8��6G   �� 5�  .   $ ScrollBarThumb��65    �@�Tag$ 
Horizontal��6`   �� 5�  .   $ PageDown��65    � ��$ ScrollBar.PageLeftCommand��6^   �� 5�  .   $ PageUp��65    � ��$  ScrollBar.PageRightCommand��6\   5�  +   5�  #   5�     5�     5�     .��5�     �� -   5        $��songList��5�     $ Vertical=�5�     $	��Top=�5�     5�     5�     5�     � 5�  
   -   5        $��FavView��5�     $��
60 0 200 0q�5�     ���#404040$y�Hidden=�5�     .+�5�     � $	��Top=�5�     $��Center=�5�     .+�5�     �� $	��Top=�5�     $
��Left=�5�     $��7q�5�     
���������5�       $$ Heart=�$	 55X�5�     �� 5�     $	��Top=�5�     $
��Left=�5�     $��	Favorites��5      $��70 0 0 0q�5     
�������$��50(�5     $
��Bold"�5     5     5     � 5     $	��Top=�5     $��4��5	     $��0 75 0 0q�5
     ���#2b2b2b5     5     � 5  
   $��Bottom=�5     $��60��5     ���#303030.+�5       $	 Top=�5     $  Depth4=�5     ���#303030.��5     � ���#303030.+�5     �� -   5        $��songName��5     $
��Left=�5      $	��Top=�5!     $��16(�5"     
�������$��	Your Song��5$     $��	20 12 0 0q�5%     $	��400��5&     $��CharacterEllipsis=�5'     5(     �� 5)     -   5        $��songMemo��5*     $
��Left=�5+     $	��Top=�5,     $��13(�5-     ���#8f8f8f$��	Your Memo��5/     $��	20 34 0 0q�50     $	��400��51     $��CharacterEllipsis=�52     53     �� 54     -    5        $��	playSongB��57     $��Center=�58     $��Center=�59     #��[  5:     
�������$��50��5=     $��50��5>     
������ 
������ ��5;       $$ PlayCircleOutline=�$	 37X�5A     �� 5B     -!   5        $��	nextSongB��5C     $��Center=�5E     $��Center=�5F     #��[  5G     
�������$��50��5J     $��50��5K     
������ 
������ $��	100 0 0 0q�5N     ��5H       $$ SkipNextOutline=�$	 30X�5O     �� 5Q     -"   5        $��previousSongB��5R     $��Center=�5T     $��Center=�5U     #��[  5V     
�������$��50��5Y     $��50��5Z     
������ 
������ $��	0 0 100 0q�5]     ��5W       $$ SkipPreviousOutline=�$	 30X�5^     � 5`     $��Center=�5a     $��1��5b     
�������$��0 10 150 10q�5d     5e     � 5g     $��Center=�5h     $��1��5i     
�������$��150 10 0 10q�5k     5l     �� 5n     -#   5        $��repeatSongB��5o     $��Center=�5r     $��Center=�5s     #��[  5t     ���#616161$��50��5w     $��50��5x     
������ 
������ $��	0 0 200 0q�5{     ��5u       $$ 	Autorenew=�$	 25X�5|     �� 5~     -$   5        $��randomSongB��5     $��Center=�5�     $��Center=�5�     #��[  5�     ���#616161$��50��5�     $��50��5�     
������ 
������ $��	200 0 0 0q�5�     ��5�       $$ Shuffle=�$	 25X�5�     �� 5�     
�������$��Right=�5�     $��Center=�5�     $��	0 0 140 0q�5�     ��5�       $$ 
VolumeHigh=�$	 30X�5�     �� 5�     -%   5        $��soundSlider��5�     ) � Minimum$) 0Q�5�     * � Maximum$	* 100Q�5�     + � Value$+ 50Q�5�     $��Center=�5�     $��Right=�5�     $	��100��5�     $��0 0 36 0q�5�     6#   5�     5�     5�     � 5�  
   -&   5        $��
mainSlider��5�     $��Bottom=�5�     $��0 0 0 56q�5�     ���#48b4f0���#48b4f05�     5�     5�     