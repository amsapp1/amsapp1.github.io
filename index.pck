GDPC                                                                            *   @   res://.import/favicon.png-8f09ca96ac5b2c7e5213281cd807fd87.stex P&      U      -��`�0��x�5�[P   res://.import/index.apple-touch-icon.png-8399690ced4287aa29b713b5448e1f9d.stex  P6      ~/      ��,ȗ9��xVk~�D   res://.import/index.icon.png-7b798a22967bd0d2fa3fb28630c8ac5b.stex  �h      �      &�y���ڞu;>��.p@   res://.import/index.png-fd48e7160bcfbd53b89f11bc5623eb1f.stex   `q      
]      �녏���	��
*�<   res://.import/pix.png-020b9f3317a89806f7e654c1446dcb71.stex ��      F       �8JI�[�֔�0���   res://adh.tscn  �            �&����-�F�C@�!�   res://blur_shader.tres  �      <      ��O��N ���5Z_�.;   res://default_env.tres  0      �       um�`�N��<*ỳ�8$   res://elements/bt_producteur.tscn   �      �      �i-�o=r�{4W�$   res://elements/champ_produit.tscn   p      �      �m�c#�H'��R��P$   res://elements/commande_produit.tscn      ^      ] ����*�/�z$   res://elements/editer_produit.tscn  p       �      �N%��yCﭠ�
�y$   res://exportpath/favicon.png.import �3      �      ��eվ���9�m*�4   res://exportpath/index.apple-touch-icon.png.import  �e      �      �C<��+��Q���(   res://exportpath/index.icon.png.import  �n      �      �9Q��?��xdG���Z�$   res://exportpath/index.png.import   p�      �      c~Jeh}�4F�~����   res://main.tscn  �      U      �i����O����X   res://main_m.tscn   `�      V	      z��n�m�W��-"�n   res://pix.png.import�      �       �5^s���d�u�"�   res://prod.tscn ��            4�~=e׈ژ�{�=���   res://project.binaryP@     �      +*I5�(�/�u*���7   res://reg.tscn  0�      �      a/�J�	��,�����   res://script/adh.gd.remap   P>     %       ��{�_:�O�P�1҄�   res://script/adh.gdc��      �      �=PӨ�B��a��[M(   res://script/ajouter_produit.gd.remap   �>     1       j��C��|�����    res://script/ajouter_produit.gdc�     �      ��5�[GdW�.�$   res://script/bt_producteur.gd.remap �>     /       `'F��%(���Y+��    res://script/bt_producteur.gdc  �     j      ��g��	եǟ����$   res://script/champ_produit.gd.remap �>     /       T����s�B̎LB�..2    res://script/champ_produit.gdc  �     �      aѐ!F���}F���m�\(   res://script/commande_produit.gd.remap   ?     2       7{��N
��l��k�$   res://script/commande_produit.gdc   �     �      V��w�!ۜ�`nȑ��$   res://script/editer_produit.gd.remap`?     0       �g�K(k�W�[l    res://script/editer_produit.gdc �     0
      K&"E^*�%��	�K   res://script/global.gd.remap�?     (       �yRfz�Wdf�⤀{   res://script/global.gdc �           l}@�s�蹫�&��;   res://script/main.gd.remap  �?     &       �}ud�f^��l����   res://script/main.gdc    $     �
      CSc:~�rP
�͕��   res://script/prod.gd.remap  �?     &       o�.�k����,���   res://script/prod.gdc   �.     J      �>"B��(�!pA�*�   res://script/reg.gd.remap    @     %       q�ά���%�\��'��   res://script/reg.gdc�5     Y      �c� �Y}�bid���    [gd_scene load_steps=2 format=2]

[ext_resource path="res://script/adh.gd" type="Script" id=1]

[node name="adh" type="Control"]
script = ExtResource( 1 )

[node name="Label" type="Label" parent="."]
margin_left = 21.6608
margin_top = 27.5928
margin_right = 571.661
margin_bottom = 83.593
text = "Espace adhérent"

[node name="Label2" type="Label" parent="."]
margin_left = 33.8188
margin_top = 78.0842
margin_right = 253.819
margin_bottom = 92.0842
text = "Liste des producteurs"

[node name="Label3" type="Label" parent="."]
margin_left = 889.0
margin_top = 78.0
margin_right = 966.0
margin_bottom = 92.0
grow_horizontal = 0
align = 2

[node name="Label4" type="Label" parent="."]
margin_left = 409.0
margin_top = 36.0
margin_right = 594.0
margin_bottom = 101.0
grow_horizontal = 0
rect_rotation = 0.00923857
text = "!!! afficher les articles dèjà commandés !!!"
align = 2

[node name="prod_vbox" type="VBoxContainer" parent="."]
margin_left = 33.0
margin_top = 105.0
margin_right = 985.0
margin_bottom = 159.0
size_flags_vertical = 0
               [gd_resource type="ShaderMaterial" load_steps=2 format=2]

[sub_resource type="Shader" id=1]
code = "shader_type canvas_item;

uniform float amount : hint_range(0,5);

void fragment() {

	COLOR.rgb = textureLod(SCREEN_TEXTURE,SCREEN_UV,amount).rgb;
}"

[resource]
shader = SubResource( 1 )
shader_param/amount = 2.0
    [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             [gd_scene load_steps=2 format=2]

[ext_resource path="res://script/bt_producteur.gd" type="Script" id=1]

[node name="bt_producteur" type="PanelContainer"]
anchor_right = 1.0
anchor_bottom = 1.0
margin_right = -1024.0
margin_bottom = -600.0
size_flags_vertical = 2
script = ExtResource( 1 )

[node name="menu_vbox" type="VBoxContainer" parent="."]
margin_left = 7.0
margin_top = 7.0
margin_right = 307.0
margin_bottom = 47.0
size_flags_horizontal = 3
size_flags_vertical = 3

[node name="bt_producteur" type="Button" parent="menu_vbox"]
margin_right = 300.0
margin_bottom = 40.0
rect_min_size = Vector2( 300, 40 )
size_flags_horizontal = 0
toggle_mode = true

[node name="produits_vbox" type="VBoxContainer" parent="menu_vbox"]
visible = false
margin_top = 44.0
margin_right = 1024.0
margin_bottom = 44.0

[connection signal="toggled" from="menu_vbox/bt_producteur" to="." method="_on_bt_producteur_toggled"]
   [gd_scene load_steps=2 format=2]

[ext_resource path="res://script/champ_produit.gd" type="Script" id=1]

[node name="champ produit" type="PanelContainer"]
margin_right = 841.0
margin_bottom = 40.0
script = ExtResource( 1 )

[node name="prod_hbox" type="HBoxContainer" parent="."]
margin_left = 7.0
margin_top = 7.0
margin_right = 834.0
margin_bottom = 33.0

[node name="desc_hbox" type="HBoxContainer" parent="prod_hbox"]
margin_right = 4.0
margin_bottom = 26.0
size_flags_vertical = 3

[node name="desc_text" type="Label" parent="prod_hbox/desc_hbox"]
margin_top = 6.0
margin_bottom = 20.0

[node name="desc_tarif" type="Label" parent="prod_hbox/desc_hbox"]
margin_left = 4.0
margin_top = 6.0
margin_right = 4.0
margin_bottom = 20.0

[node name="bt_hbox" type="HBoxContainer" parent="prod_hbox"]
margin_left = 504.0
margin_right = 827.0
margin_bottom = 26.0
size_flags_horizontal = 10

[node name="bt_edit_desc" type="Button" parent="prod_hbox/bt_hbox"]
margin_right = 142.0
margin_bottom = 26.0
text = "modifier description"

[node name="bt_edit_tarif" type="Button" parent="prod_hbox/bt_hbox"]
margin_left = 146.0
margin_right = 241.0
margin_bottom = 26.0
text = "modifier tarif"

[node name="bt_suppr" type="Button" parent="prod_hbox/bt_hbox"]
modulate = Color( 1, 0.45098, 0.45098, 1 )
margin_left = 245.0
margin_right = 323.0
margin_bottom = 26.0
text = "supprimer"

[connection signal="pressed" from="prod_hbox/bt_hbox/bt_edit_desc" to="." method="_on_bt_edit_desc_pressed"]
[connection signal="pressed" from="prod_hbox/bt_hbox/bt_edit_tarif" to="." method="_on_bt_edit_tarif_pressed"]
[connection signal="pressed" from="prod_hbox/bt_hbox/bt_suppr" to="." method="_on_bt_suppr_pressed"]
 [gd_scene load_steps=2 format=2]

[ext_resource path="res://script/commande_produit.gd" type="Script" id=1]

[node name="commande_produit" type="PanelContainer"]
anchor_right = 1.0
anchor_bottom = 1.0
margin_right = -100.0
margin_bottom = -555.0
script = ExtResource( 1 )

[node name="comm_hbox" type="HBoxContainer" parent="."]
margin_left = 7.0
margin_top = 7.0
margin_right = 917.0
margin_bottom = 38.0

[node name="desc" type="Label" parent="comm_hbox"]
margin_top = 8.0
margin_right = 300.0
margin_bottom = 22.0
rect_min_size = Vector2( 300, 0 )

[node name="tarif" type="Label" parent="comm_hbox"]
margin_left = 304.0
margin_top = 8.0
margin_right = 364.0
margin_bottom = 22.0
rect_min_size = Vector2( 60, 0 )

[node name="qty" type="SpinBox" parent="comm_hbox"]
margin_left = 772.0
margin_right = 846.0
margin_bottom = 31.0
size_flags_horizontal = 10

[node name="prix" type="Label" parent="comm_hbox"]
margin_left = 850.0
margin_top = 8.0
margin_right = 910.0
margin_bottom = 22.0
rect_min_size = Vector2( 60, 0 )

[connection signal="value_changed" from="comm_hbox/qty" to="." method="_on_qty_value_changed"]
  [gd_scene load_steps=2 format=2]

[ext_resource path="res://script/editer_produit.gd" type="Script" id=1]

[node name="editer_produit" type="ColorRect"]
anchor_right = 1.0
anchor_bottom = 1.0
rect_min_size = Vector2( 300, 150 )
color = Color( 1, 1, 1, 0.313726 )
script = ExtResource( 1 )

[node name="bg_vbox" type="VBoxContainer" parent="."]
margin_left = 359.0
margin_top = 7.0
margin_right = 631.0
margin_bottom = 129.0

[node name="popup_label" type="Label" parent="bg_vbox"]
margin_right = 272.0
margin_bottom = 14.0
size_flags_vertical = 0
align = 1

[node name="champ_saisie" type="TextEdit" parent="bg_vbox"]
margin_top = 18.0
margin_right = 272.0
margin_bottom = 80.0
size_flags_vertical = 3
caret_blink = true

[node name="bt_hbox" type="HBoxContainer" parent="bg_vbox"]
margin_top = 84.0
margin_right = 272.0
margin_bottom = 104.0
size_flags_horizontal = 3

[node name="bt_valid" type="Button" parent="bg_vbox/bt_hbox"]
margin_right = 134.0
margin_bottom = 20.0
size_flags_horizontal = 11
text = "valider"

[node name="bt_annul" type="Button" parent="bg_vbox/bt_hbox"]
margin_left = 138.0
margin_right = 272.0
margin_bottom = 20.0
size_flags_horizontal = 11
text = "annuler"

[node name="alert" type="Label" parent="bg_vbox"]
margin_top = 108.0
margin_right = 272.0
margin_bottom = 122.0

[connection signal="pressed" from="bg_vbox/bt_hbox/bt_valid" to="." method="_on_bt_valid_pressed"]
[connection signal="pressed" from="bg_vbox/bt_hbox/bt_annul" to="." method="_on_bt_annul_pressed"]
     GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/favicon.png-8f09ca96ac5b2c7e5213281cd807fd87.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://exportpath/favicon.png"
dest_files=[ "res://.import/favicon.png-8f09ca96ac5b2c7e5213281cd807fd87.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            GDST�   �            b/  WEBPRIFFV/  WEBPVP8LJ/  /��,͘i�F�[�?�m"�?A�Β�b��m#������DMI�!��s����m�<wo��D�?$Y��i���j��$�L3���C*�Q�u����ͤ�n+��K �$���m��?�vBDL *�H��ȶ��N�:��'��L�F�lRh�7��G��{z�����Kn#I�$Z���|�(��� ���r�mkۛ��#$@���ޓ齞���C=�3�Nlnr�6�"��{w���mm��ֶ����LH�v?����-�$���Y��H�ÝoI�,I�l��գ������o����;Å|�dI�$Y�����3���o�O�	DI��6}�u"�7  |��[��W�A���=�y��+���r�v+\!�M�@����X'�����k��u��6�x��̗7 ���7�B6P��ɧg5kРFBDD�� ����F@� ��u9�\6�m>��?��x#�Z��s�z��i�����C߮�-�@�	�$@B��vM�A�z�#�}ھk�56�>0�6�} ����7rQ^.���k�)���'=jԶ��.��0P�mנ�el������a��~h��� �������Z�>>���>b�t!�Hb`�́� 6�.!�R��ա�]�֔3��x����0cFx9�t�ǝ����~�����c�A�T��@'� $f��)��~*��[(	,�����T�/L�x9���;;<Ǐ�	����2�	�$R���E��N�-T�I���V��_�c���/ ��a_��y������m�AbȐQ�IЉ$HL�Ĵ�$ ����Z������Ɲ&̘���zŋ�^<ի��1n�q`��(C:)c��4��Ȧ�I1:`��+�l�I_~h�C�CM�5��򱃈�����T��m�S�X:��@��'b:AL�O"�Щ�(��U>��]~H;4b�5���������׺/����)KY�))�2��^3�$bH;,��� /,Gw5���-��.P�ǭ��#�EYb)CRR��3;5���lhwζ��sWl��#�[|�ub`�,�2� ��zZJ�
+۹����C�=G����Pe %�"E
����mI�d�������u��#��*waȐQ����2a�[8vY��z��+��nZ�b�
[��' h'FǄz�X�^�@����GMt�I���CZ*,��4�&"H1�D�N�M'`��~�%��u��U�������hǦEը� `��		� &����a*Hh��
��D":3D'ha���+��@��HLH�@�W�wȇ���$4������S���"jԀP�҉��v��
e?C{Yu��v�Mޗ���Ԛ*uؾ`�7`�A��
aܻ�� y���/��̺"���D��V�55�B��j@	�(q_�!�|��\�z����
�h@S���3�C5f���2b�Ď=����ЭY�&�P� ���5�=K��zSM|�)~�NI=CU���R�6w�.�ꎂ#��,[������5��SE��mm���p�n�	Ro��a7P�˗.E[Mͩ�8��:{��y���Ԏ4%#��L�rϬ{���Wk׺[��r|I��R4fD�Ą�t^��*v��J�z%�Ȼ���ҫ��&���,��b����֪��d%��k�����Oye��=�שc�f;�ܾER��ެ��I���e��Ym�~�W��4y�C��M��m�Y|�~!K����2[��z���wZIi7�FMn^�fް��Y[�-���v�/FV���&̘�Vn";���[�j�V��WO�����}��Y��u��ޑ��R˽D+�z�z�}v�,M�	��ݴ����{�=?m�,Z�Z���u���Nz�յڪ�K]���U��?�KLM�D�JNwF~��Fv���:�w�;ԁ��]l�کG��T�zg��8�SD���,O����?G�ɦ���̖]�/t��I�ى^X�ֶؙ�\׮~o'�d'�+)9}��a]'����ݱ��®��+|������ڵNX�N���N�zY��ɫ������͘V���f+|(�?�i����\e�w��v}���r�Wb*�ߣ.����s$fy�1����&n����\|�,�8j�,�nK��-Qvi�4�L�w���~��6��#�u�3~W<���u��[�^��V��$Ǘޠ?�A�l�N�X�9�X04߹�^,��N@cHu��91EeĈw��+ү�Z��i܋;�8��]6���s�2R+~�����r~q�ߗV��*Sx���P�r�Nt��W �/ ���FT�svH�(���?�Es��r5�4�u���No�2�Uy���uJX�����lg�S(SK.�2���Tk��up�F�)s�b��0����܆K�SV�z�[P������fҤQ�)G��0�2B�Nx�2����*W/�e��@?���-{I�x��V��~??o�W�v)ʔE��$`b�����h��3 �Bd���V��ϓ�<����W)r����������8���q��
 �76r����p?��'�"(����@��Pn:#� -����>�T2jj	н�!LX�[(=�'�\���.!�a',	ݝE4��o���%��1��껀�y�IF w���a�`�b�'�:4�p =av��;��A�:��z�A�    �Ai�gޒ�=-�,L ���s�鍂'L��>P��ZU�(ȍ'^@� ��V����h),p�&D/��n%�QTP �9Yu2��/�JI"�,E��>�$ν�{B|!���DA���d��vf�^H���Zu�"��¹��	�@O�{Ӏ��r3�6��C��t �ĺ], >��DZ�9s��P�Բ)`���@F�R�����-�RO<ܳ1�"�Hأ�V0��	�I�ї�ͺ@˽�Bl ��_�G"1����1{
���MLͭ���!!�A
R�L�0��x$�[�Ɩ ��#{��c����6pcRL��lL�\��n&[0"����� �~~���04�|�'�A<}�_0H�Gߏ�f��b�ul;�� ��b��O�'���N/�^�$2����tNu<�m����dkY��2}�� ��;u/�������u����R?y�x3?}�FR�����]������PP����O~���?�}���G�kY���O1ߦo$	`f�����l껆����R+)�޺�m�Yg������D�d�c;^������X��	h#F��O���9Ё9���.�ڲ�z�pa2����v�^�_X(޷~/v�c��QW��DԦu]��lKK�����)=���z�k��F}�q�nl��n@��'�I�WHj��߶����7�#㾠�9�ڃ~�����������[­��p쎷��k�[6p�k��zï�z���������0^��n��J�����ew��0��%������J�9-��}]�5�N�����b��死G���b�x�6�z[lž��,��f̦�d
 ��bK[���=-���
(a�A܂��W�aB�i��*���n�7q�e�~mw��.��N;�?�Iǝ*����m�#�ϗP�!�^�򽟟�W�f���F��TKlx7����˽}W��\oT�ē]�a�����G+��~��dm��������rw����j׾k\�zX��Ӏy�XG����Z�O�2`H�rK�/��~-�';2��~5I�^/�֎��Uٺ��|���˻�W��z��^P��UXLB���i��;X����:���Ͻ�Q˸^��b�W���b�ܚW�R[՚}������&�aՆ��}{˓Ws���ϛ�B����L���$�����f��f�F"p�Dm�[��o۵��q���sp$�Q�K��]�u�٧~8!����u8����j�������W a���n۵Śy��Nو�sEIiр�@�N�׿�o[W�m�Z���o΅ x  8�인��U��6c����}���7�xn�s}�s�j�ڭ{�6MY��Vl�]o����e�]fԓjf����_ۯ��g�۾W�%<�7�z����_��H�t�w�7[Y��B�(�|���}��\�Je��N��}f��C��%F�%�0�9'�<�?/܂@�?�8��M�}DX][3�D�Ny��v���ՖZ���(ٍt��{}��.��<W����Y�Ď��<�S�~7��5?���`y�W�O����w��Yؒ��nrӌ�nm����"d�Ȟ
(�c�W����߲����~��sC;��.x�m�i/�nc�{��Y��A��ʋ;�0�+F,x wl��nZy5t3͠}�W�5��y�}o8�*��,a�}IHX�;Դ��oX#���C2Ѐ��δ�w!UQY"�Ⱦ$P�S�q����6|�[��	��D��**�ح���S6��FMK����+4�@��T�RKj�w���s�W^_XE%K����?�����@�����q'�/̽h�h4�� ��|���,[���:K��}ay�t��[�z�\�s�&P���]�'/;�k��e�G�<�׽FM�Y�O�{��2��^�X�S�[�%��h�S�XiGS󴷕�s8�kU�ܒ7�N��óm}�hN_�0�7L�|���[Y�uK�z��9\���Y/y�7��Ӌ���_�;�[ԗD	�nx�L��YЭK����T�����l����W&�������K*kx��Rk�w���h�M\�>-�P���m���^0�����~���{_��}�k���y{g�rN'�'&[�杗�Ӿv�7~�^k�~���%�n|7��߷�����[��r�|�@�Y�߷��l�}g�F@��_�]_�*��bB����Z4��S�^�G���L������|�,[�k����讨�� ���Ů3�M�FA|�0gf��ac�9���[�}k��|h�&#`  ���'�AF{�sP$�/��.�X�|�v���|k��V8m�}�v�٪u�{c����Y*?�E��mr���ˏ��O��7+;���u�:�>s�L���V>�g:*Y4��g_�[���Oݻ?�4e"G�����ߦ��6�{�gGӺ[)y#�MW�q����2x�߯|�'m��3οzW�R;��9}f�J�|.?��'9u����~׾���?khaw��]�3fkӦ��2�2}:�ju)�Ȥ��>iNq��X�&�%'�tD�0 ��q2�Î�<�'�Q�K��t�'�"` n��靟N��pB�2����Y�����@``���`�r������A��ߵ;�j}�Q]�_y�ԨV���Sp���]yK�W��~����21Yɥ-=�I/�5�W'�h�c$��<(�@��M?���积��]�ꗝ��='UR�2ed��Q����ާ^�i���&=^�{�����Jw���Җ^y/���|]��~�${��@*���oyWd�mv�%����)�o���7x�n�k�1���  H؝�H���?a���j��N���X����lS/��s�{ͯUk�Gn���l��������߫_5;���W��{�!b�?w��o����}��t?������77ܻ����[��^�������u]�h�2����h��*����g��gb�k������_;v����j��̚ �{��;�޷����~��j��н��� v���M���+=�������ޮ3]`� 
�̾��v���߀��tZk�ό�+o�=��v�vfo�$�(��{m���_���������ӫՍ	+k\��po��N��+��)���v�~VZl��J�����[#�v����wQ~��*��D����tqڷJ�����SN�HH:.?���M��5�����W�vn\U��s��9X��u��2�.�{e/p]���[�JU9G�� �����f��}�\y7��]/�Z��^���]z�׼���x�~5�	G��p������\�ݱ;Q�v�>���?�
,_W��;��;���G��������ZM�	G$���l�2|�wv�]~�-�XOXP�i�dd�;/�ƚ9 @�����m\����o��������#��0��@`$������:yG޵[�^C+��+���ԙ@�]N&���&rx����2./?��
�@ �xJﳱٷ�Q��;|Cy�nH�]P�y�[r�qu�/�w`�d���׀���>?���pOZN�B�2/[���D"/������S&��=g���7=S�t�����=5�E�f���%�]^�f:l��Yo����9)�dqx��+�$LD��&��=r���F�a������Ąh��L�	,
8Q4�ӊxEq	O @X�݈��K �MH�+JL,�v�r�P�-�&�������#���#�)E8������ݟu~�W��%̙��=�����V���
�>��Vܜ��5�$������o�����y�W^I[��w�:���^�B+:{� C^�]����	��i�E���p�|ɶ�V�{־��M�=o���Yb����_��^r�2��-�)�.�\���Bݷ������%yZH��Q/��1�6����/�~�g}s�F��*�/��efk��Vן�L�W�V���P���6u\���P�R�!m�>��mn�GK+C���獠��tn�&���������_�����O}����u���������׿�����V�TYy��v��U�B3ߏo�~a.����\�T�JM�x���������۾oY	�f��g��[��I�:}��������'���[^}�Oj'��N��;���������|^ݫ�L�J��ʵ�2�ps���qź�wyڸL�JJ�w���y��e�^lm	�n����S��;G�;��Nw�����	'!
y֏ݭ�������я��#�1�a�4 ��[P��{/��q��Iw����7b0]$R87��6��L���DBY��w�S���5���p�پ��������5�)���3ן������������[��7k���:�HҸ�X+�$\�[	9-��;�f�����?�T:��w����{�{���0a|e��n�s��5[��0�������~������?�>�j��_����?o�����d�g�MA'H  �)F�G��Y���n��@/�?���)�4��v���|{�]��x�6!CM���S�Ƶ�;��$�	��I�O��'5��B��]����7����LJ��dw3#�u�~�:�3Ώ����s�������L~�'!!�; ��y�-�v�y�hҸ�8�^���w#Sc����i�^�� ��D	��w�ۋt�,۵_��^�
���^@MV����*P�}�@�<���\#��%ͽ �PQ��RAw6a�u��	 ��]YY��$m�_����W�0�ȹha�����U �����pBA'�����x�UjW 姜x}p%�f�G��0�`��A���\�&�WM�@*(���>�-��<�w	|���DP^֚����>��E�G#0���(ɦP�%-���~�  ,�
C� � ��U�7�D� ���f~�y�wP�ye38]�yh��eB���� Nmu����	�q���� �BA %	�$K�e�;6���6Ұ_��Y"�W p�y�C^��*�f�ǟ`1Y�� �F���RM��٦�]���y���a(�BL$7E#h4	 $0  `�f��W�>.�@B�>$�ͼh����-��@ �x�  pa_�����V 	Cb=��3�1IjJ\�t2� cd�4 ��{˷+}`��.5���ce���9����������3?oA ���0 ����᭫A�RS
���bO�s�F�JR&IЕ� 55 ��&Vϕ>B-A�F���c�����������f~�  �dB� k��2u���EcSS҅��0�q�9���[�, B�b!�GWJQ�������v�0#��>$��!{���]��K,	�V�����+�pC��@	�S�ʻ��t`h���zv��y��{�܋��F��h�������
�>�I�6"O�>��x��_�}�ׇކ{���vl�`�Ʌ�^r��q'�F�(V��( x�N�jv��[��r�ɡ4��+V�%qr>`�0@,�C` �]����>���Ԯ޶��8�|��KM��TT,[��
#I�����t @�W�[ ��D����!$�kg�m�����s�V����fr�p��Bܑh� �9�`4�+��E�=+H�������������HD@�� F ���}�S�ڨ��ƽ�s�3�ʻ�{ыݝF�#�qNWM����ܪ�n�x��@,�vkJ��@��D�D
�E�0�TkW��j��P��0�ɯ� ���4����<N.$$�F�$ЍI�I����Fzۼ��)���V�^:n81,MB���#�ևID� ������x�td�S��q�Uzi��p��.���c(t'K�B�]Sݴ��z�>��<�<^nw !�,��$�E9�|p���INN�sh0�;@` �$51Y$7�%����M�D��t?$�[����^S�����d�*�@'X��FK�k�AA�xb�  	! B�8�j^7?}E�����2��J+���-`$ $&ޱ��v��["��u�����SNI���S� ���޽�-��3�ye���� y�s�
�8-�T73��F@��でNlz7�|�7z���4y'; �BV�~]��w{@4s����O��=j��C~+�8'Ͻ
 �C��u��w����a@��-��tu8y��Ĉ;�N�ɚ��3}NDO ��~�T�  �|�u�w=+׹�� h�`w�T�6�U��T�ⰹ����2��ګ��=5M�������T�K�,	#�@h�*U�rBSRp�0��M&Oq�� ,�7�b!��0��q�T�8�&J.���LF��P�k��"YJ���Ɯu��Z��s�,��eO'�0��������ԩ�4��)@���)b�^b�$��7�n�,m"� �ըw�@ ��d��Xzʖ?	�E&����Rk�v/��=��q���<�˱����X�s���i\��Q�v��_x�:Y�)r�A#~��938���U��:H6Y"���P��O3��^< ���
#��ɮ���"ʾ4 +�ݫ٩�L��npys%�8u&N��h������Es��`i]�5?k��T�rhN��(����]!!uG��y*��o��H� �@ �  �F�ZviK�;u7/�o�[��k�5k6hPir���9�8\i�@���kug��2t�Ǹ�vj��\�Z�x� �܋ 1z�ÌL$ �7��{�����K �d��a ��QF���#CF ��5�7��s�VC[�S�(�����Y.�o�e,}�w�n�r��nկW��W�^�U��@��	 ��{�9��F	н5�v^[]����=�%  H$��c##KAӖ�,��gXb�3|4�~]��[ט�z�F���s�n���ah��ݹ�;�؅���^�g E���DP(诤�ȁ �?w��,nϫ��L�q�Ӯ�w�W،	A<(��ۗ���P�:rڒ�}�ۏs��Ly�g�'��k���3Ь���[���s��#%��cvZ/ zr��qo��m��-9���90����*L��	�x8���*=u��M�~��e��~���rK��T�PWq��`��^��t���������h���S���w��{=�e�^��u�M4�Ά4�i����[��@��|A�t�/;j�6Z��]
)6�L	�c#�[}�;��f�N�W�qG��'�	�K�4|�ϰ����z�����i�8�&O��Um]�
s$:�G�ݨ�;C/��3zB:�%7�O���w������x�7cf���W]m�l�
7aHY�;��G� �`�Xa��dT�T2��B�[�%_m;�QX��Ҟ�w������}Go���qw��.K߁����iK.Oy+���}�o�_��_~+���`3�����_�,�m�m�^j^�yy�Wz���,}��,I�����(���u�������-�
��M�I�$@n}�25s����
t����һ��O%KDOvdD�Cb!��%2\�D�D�t�SB��s���}�mݷ�=ʄt������ �&�l��w�ׯW_a�����nz7��*KM�����y@#�R�'��ӥ3����e^;�ٮ3w�_�ն�f;�f*H=��"��ǯ�?�3�o�������Q�yK�.v�����<18�>�Lb�IR�J��<e��g�h������WQ��vl3
+P�+Bn��µi�}��}u�OH�Z��p��V>��n�������y� ����BnA�@�)� ��K�@�F	h�� ���L!�
x9y�gXv���js�_�&��rl �@�x�2����Z����u�jm�&���mz7�y���a�x��1��ɼO�[�)������o"���Q4M@ċ�<�o4����(����f������nu�v��)�	s�0gb0x�h����{{^_oS�`J%�w�}�4������vx�����13� �l �p/�[��-O@)�,�&�&�H ��G u�d�db�+��o��ؒ�O����V��M��dSc`ϼ��l�Z?�쮟�lo����������������o��l���,S*�ҕJ� AM �h��& ���)-(�^�)���g�����и]����͵��֧\�JM��xbx��Y�}���z����_o�n��ח}����7 y9�J�@M		�#D�@ &"�0//
��\�-���1���Y��vng뫡���mf�25�t* ���}����u�|��e�~�ݪ��[_޲����MwBz	���h4���NnXr(�   '� _h�����;''��=���Vw�����2�m�
d�|� ��[�f�n۵��߳�ö>]! P.�9)i�i�#�_��Ι{�p��u� ��-!���)#s���o�Rh 	�b�w}�ݾ[w���t^�����_�S��(!��)A� 6Μ|A13����RĔ2�)W��e�.  �vT* 4��쐙Y������	\{  (��H `މ���~�/  H�����()�~�b�~� ` +�� &@D�=��� �����	��p� �0Bb��=zR��Jx��'#"���;�c�����g�Ci�G@O��K���Ep�3
�jԈL���B�P,$�B�0�w@�DHC������`�1a��k4h�6�с�ɦw  k�
րfM��>�iɞvH�p�ր-R;����!Ӄi���	�q�T��]�~�a�ޟ�	6�@L�O�����U��J�I��۱i� ��A���+���cmJ0A'�� ����vlTIJT�M��m�R�����|�	�H�s;ǦP�*�+fR�j�b�δ�K�E�b��`�ĐD1���D��c����Dg��P�b���lg�0�����̫.�iR�d�;�U�zlP�ΌtƀU�k�v�	@'�֖i�؉'%%���Q��ƫ���[�a��R�A>V,� 1�vb��!1�����h'�h�i_I΃��w�{W[Sc�������gο+ؘ���0�ɧjUne[<v��1bttb���ްii�Ʀ�&%%9��L75]�Å�c:5��z�l~��!�ô']6Y�cŚ�*��d���E�dO�N�(A��l&5���M�6��!�&Ld~�7]�x��+ȫ5��*H0�0���!.��>�X%�$S4���X�`�Y-�l�s��IWp�ן�#2Z\a��$Jhiǆi�0�3ha�$E��56�bv���l�/�����b�؅&T���R��Y�I����ʰB���3&ddT��}��é .8��5^�x�qp�.�&���,��m	�]�%T��0J��cG�t�ؑN��n�L��c���Z�T� 8`��~ ��|U0?��ì�m�vu��}z�v-��� !""L�pĄ�q��v�Vsz�xw���pQ>�o ��ܹS��&lp�m�ۣU�Z�4��V�4	0c��Z��n�޷�v��"��'�����/v~+5 ��tw�)(, ��-�N���ݙ��.�+�6=���|y   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/index.apple-touch-icon.png-8399690ced4287aa29b713b5448e1f9d.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://exportpath/index.apple-touch-icon.png"
dest_files=[ "res://.import/index.apple-touch-icon.png-8399690ced4287aa29b713b5448e1f9d.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/index.icon.png-7b798a22967bd0d2fa3fb28630c8ac5b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://exportpath/index.icon.png"
dest_files=[ "res://.import/index.icon.png-7b798a22967bd0d2fa3fb28630c8ac5b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST   X          �\  PNG �PNG

   IHDR     X   �v�p   sRGB ���    IDATx���y�\U���Ϲ��Iw��+���-!�EqEP�U@t��}��~*���8 �""(:�	!d���I��=�?��������Nޯ�']�n�{n�ͭ�g�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        L�  �ڌ�7&����� `t�j �L� ���7 ��qu�����L�b( �xqE�Q.�X� �T @q*-t  �sP�/�t��E��JzR�_$��f��'�,I'K�'�)IOK��4��c'�ч+7 �"9���Hz���%-�T���Α��A��~��5H�?��h�
>�J�{�;I�@   p�Z��c���Bk�m��f���'�/�2�>�}7��za��3   �dQ	���^l�����7͊��2��')��Y��7|���@   ȧ*��Z��Z{��v_�5��m=���;����c_z*�g����>����C�w��m=�ӆ���1�+�� 
�N� P�ҨD�Iz���tb���w�kņf=�y�^غO;��H��M�׵���p��;��o����H���v�>s�J���M�4qL�L�c�7��Y���*Ku��OI7H�URo� ŉ�3 �$�zI��IIӒ�c��Z߬�^k�?��Ӡ���q�N�sHt�I�P�O3 �����Y���^٣o��R����_�E�6i�aM�=�.�aI�I?�t����<���b�� �T����$�\����t��ѵ����]zuW{Z��4�J7}�D��x�ɟ�tm����}� �3��y2�[}�Ok[kwZ��T�7͟�79Q5��6m�t��{� P\�:@�
�ܟ(�q��^�[��������S�nl�������p�w���I�+`Z�H��W%5F�]�U?y�Ռ����g6�-GM�)���*�%�"iEP Ņ�3 ������.�N���l�nݱ|���v崿��R��E���|Sҗ3����y��;�+��ں�s*߄�J����:k�$U��ľ�IG'� @q�� E*  yQґ�'�[�Ew�؜s�>څ'Mו���O�%g`���
��.I���t�ӛ]Q�Ue���i������/I:*:�  ���z @��<�f���C��]�M���9V��2��_|�u��U����<Y�;69�� #�  F�a#��!嬷PX�56�Ӓ�b�<ŷ�W+43א{�ݪ��A�e�����N  yA  �ǰ �*�$�q�6u�kP�P��m
L�4�P�L8m����J���t�sn[?"��	@ `�" ��cX%�*��Dg�������C%MVh��Ҩ��pڔ�6C�[�=6�q&�$��� G  �ǰ $]�"�yv�zs�:�7���Uq]���./�M" �Q�  F�a��nH�����_^ܙ�ukm�E��;��ٗ��I�*��~�� �D�-$ @���� D�~�b����hw{�v��hO{�z��7�A?|�xFU�%�(-�!u__��uzdm�,UNU� � �����U�-�����^��-I���:zԡ5w�j͎t��Mme������  Ň.X 0z�~�T[^�rܸڊؤ���  E� �Q����Z�;A�æ�j���4���i����~�I��: �  r�M6�}����[T��@�=. �����J'� $F, �R.���<"���߰J����VcM��hџ��� � �BPO���I�BICV������kȮ�(�]�J:6��2�(�o$A d�  2���Y/�I���>+�2�]�K����$��s0v�j�?f#��~&�.��+%��B�Y���A��?A d�  2���Y+�AI�����G�+�ޯ̯��Iz^ҕ�	>�w���q0�}���M6��R�:-�,=���W$}O��L
}�S�;�M�f� ���  M)*�e��(�ټ ����b�rIߔ��-V�C�w�G֫-�"~P��(�eKf�܅S���%}_җ%�Z��m��#iA���t���D00 ��� Ґ"�0�~!�}��IR)}X��$=��tIwIZ��ƽ����v��+vs'��So9B3������$��x���J:#�	��_(�ʒ�d ��� ���b��u��u���u�ӛ�7���
U�o����o���b�+�+��_o{��#ʚm��۞�]Oo�$.��R�[���J����
>}�������=�9@��\� Vܪ�R�~|@�-�	;�u��w�Ҿ�P�����┙:sބDw�wH���i
ݕvshW[���5za��� �`�X���s5�>n������풮�4)vk�\�K���F�n�$��.�u�,Ԥ�U���_ҭ��A+ $�U �H|��PW��i�ں���;Vi[kW��ӛjt���:u�!i���ך��֨���둩��R}�#�tv���M��٣�~wG�k��T��K��zغ#=
��<�(O� H�+$ $�"��"i������s�yN��jO�������5��:�6�������͉ ��t�I���������ڥ=�N�mnM�ߜ�u�ޅǪb��#�G�pD� �� H�TIZ�P4���o߿Z��ݝV�奞.<i�.:i��J�����7�{I�6%�#��3��w�ژ��}������S��?8>'��G���ϙ������j�C  ��:@��7I�Pt��7���7d���c���7��q3$I����=/vB�f4����/�����ӏ���6��w�K�K�E���&�(��D�!�x\ F�������|}������ztFҙ�'�MGN��X����2B���
���s���]z�Ywi3F����Цؗ�#����� �qU�I���V)4��$ikK�>q�Ju�%\����R���ij��;��J�� �u@  J��T��
>�}}�O�	>"]}��91k�4(�*V��-j p�! ���/KZ��e�S����qo�ny���$}>�{B �u  ��|I_�NX��Y\��@�A�ݻr��|uol�$�+@q `T! ��<�f:Z����O�{`�sĬ���o�Z;���+$�"~[ ).� �܇%-�N���ש����vm�������&/��� F Hl���D'��Ь�^�S���<�ʞ��X��й @  �}JҘȓ��A]�`�o�h�:{�̈́6V�s �  6�կߨ]m=�*�TsG�nrcl��-  $����*����b�:�� � @2�F?9s��|��B�E��Y�z㼸!�m   �dn��|t��Ϝ�ڊ�Ŧ��T�x����+t�  � @b����44¸��BW�vh�J������!u�I
�3�� 	� @r�J��脳����3
T������GO�M��B�   H�I�#O��O�i�*�J
V VEY�>��#d�'����� F 3�$z�W�n5���Ic���3�b�]}��4�*:�Wh��y���[ p�! ��,�tCt�ێ��7��~�ܩs��GO�M����8 0�pK bXk�T�P���i�����۞ն֮�(
lҘ*]��>�I'(���~ �p�� @�$�NI+��MUy�����TZ���@W�}�m�b��I�� ��/& d�9I��0gB�޿tV������Sռ���ɟ��� F- ������Nx�	�t��Ƽ�	�s��F���i�ɿ���D�� �� @)*�WJ�8�������� 1wR}��-�>�h{� H�4�& � �$�������<ct�1Z|X��O���r5Ԕ�o�WsG�v��hņ-_߬�m�3��Z��+���&�8�Q�+�X[��RO-�}j����������Z��M~�	\������ H@  	cL�Y��^�5���9DW�v�&���{���SME��7���YM��gkզV��ȫڸ7p\��1��Z�;e���9$p�����__�y�����iO{��X�Iya�H"	w@� $G  )�B�f|}����#5gb]F�[8�A7\~��|j�n{bc��$ǌ��O���N��/���!u�ě��&�|I{�{�W�>  5ƀ @F�b9or�~���2>"J<���<S_9�(U��8.]�T���+��K��(��v��z����X�R\\G� �! �"3��Z_?�h5T��ג���o���P76�>{�\-�=.�j���w�M5� �]� ���V��޵@��/�]]]Z��)�Z�J�{��[_���Z��(-Y�Dcƌ��ɇ��Kf���7��9�b�,�:琸�}���'�ԋ/����y�SӸ&w�qZ��$UWW�WU^���w�>��g��3��� �D  E��%�4yl�`sI�o�;���_���#���<�UTT���ߥ+�w�***�^�h�t-[��h�Oo�օ'N���ӣ_��+�s���?��O��Iuuu���Kt�������4T齋g��G^�[� �� ��c*���'���٩/|����ƛ�����^�qǝ�Ŀ~R{��J���N=�I9�K=͙P���T^��g䃧6l��޽{��O|Rw�����#���]7�x����/���+p�w;Y�u ��G  E�܅SUVY�}_��Ʒ��3Ϥ�׺u���Q==��	���&Mic�K��o>z�~x����e��7=E�,����)�:�Ц�������|A�֥�j�b�
]��������JK<����� � �%����������3�o������K;��[�v婇�Sf����Y���K�����ٷ����7ݬ�^{-�|�y����{_;ev�� @a� @��X��c*�һ��u�m�g��}�O�v�z~Ҭ��1Ue:��i	_?��i��*�*�g5��s�N�����G�n���a�>�+5�1�� �;  P�Qx�����ޞu�Z�Ȳ��AAN:�7�$]���3�9.�)o��?��2d?cU[[��~���� Ł  �@SmE`�s�=�s��y4�Vd5^��$���Ư�b�4����N�w|�њjs_W �; (e���={��wt���*PȗR�SiTˊ��ݛ �Ѵ"< Ȋ�W b-�}��V6缭���n��W߀�d��?諣��"�����t� ��E  E Q�xܸ���2�G�@��Z:^_�cܸ�g����Ϭ� F  P^���2q��r���c�����m9����;^/ӂ���9���������� �! �"��?���K_�x�����>��<�v�iCϟ|uo����W���>����y��4UWWkѢ���WmjUw_�"� ��G  E�5���jjjt�Ef��Yg�US�L�$���תͭY�/+7�hw�$i��)z�[ߒu^_rq`��Ț�Y�	 p�  ���/��ƽ�q�\zI`��T�N���\����?����G�����MC�?�ѫ5uꔌ�9��#���{;	@ ��� @����]7�Uii���j���i�5m�4}翿���:I�֖.���;�֭?=�]�Z�$Iuuu��w���S�����G��׿�5��_��J�y�z�6���  n� @Y��E�yjS\�رcu�u��%�^����E%���D�s�n����<y�$��oP߸�%_�G����k��:�S�N�2E7��z������$���������رc�^�s�&=��%o� d���  w��4yl�N;b�����r}�CԻ�}�{�1�Z���6�����ƍ��ҩ���I�&��o�׷�_ص��li��w����r�*/�TWW��~�3���K��ez�ŗ�w�^���h\�8w�B-=u��[�v�~�Ć>
 @*  Pd���}�jmn��{O�)�zcc��;�<�w�yI���ݯo��%��5~v��˔�6�9��Ь�����z�Qj�)�$M�4Q]|�.� �{Wn�OyU����C  E�J�퉍zuW�>x�a�ژ�T��Z���ݺ�����_.�w��ܦ5�mұfG����gu�i��s�˘�,�--]�y�z=�Zs� A  El��f��Т79Qo�7AGM�/�B���_����Wm���N˱aO�6����q5��o�۩�{�����W���˺��-:o�T-:�Ic�����^غO�٭_کA�f (f  P�}����C}a��*�4wR�k*4��B�}j��ӎ}=Z��=o�=Y���}�=G��v� ��^}���iu��������k����4il�k�UU^����j��՚�j�q�� �? E�{��bCafu��ܩ��r�޺`��O��$��ަ���C�٫�ŷVkw�i�ζ�� �  ��u���g���B 0j�   �C    `��    1   ���J$ �T@    �f� GfO���ه���O-��Go�`���,T�����\�5�j�.���
]$ 8`� �#��Ň���7ૹ�W-}j�PK���>5w����է<�!�(奞�j*�X
.k+�TS���r�V��)*�nW �  �G奞&��Ҥ1UI�����_{;z���O�}j�|=PY���վS��,Ӽ��W[j��)WSm��V����B�e*-��1  ��O��*4��"����}��/h���#\��a��1���TS�� ;n�(PSQ�˗�,t1���Kf| �(�� yd�n�������5�W[�1�e[]��)ɻqe�o������3�N%^~F>�Vkw���Y�m�]��w��XI����?����/4^��O�&�댹�s/( �  \ymO��]�5�뵕�j���������T��*UU^���ʲ����g�y���wD�g4�}�G�w�r�me⟳�A_�����;�����I�;������O{�{4��P�h�� �@  ��j;��PGπ67w&ݮ��L����[���I�U�%*-�40�;(mHy��y��|D�?�^奞��C�gTU>��l��6]���j��S[w��sb�3� G�qSIm��צ�N�n�{���8��c���;�M�+Y]eY\x�k�65w:	>$)O=� �D 8���3�VWY�֮>g���P����K{�{��?��B���cJC�6�M�
�����W��].F2H� do�2�p��QW�vH���_�c���n���O�}��r��Ҧ:L���w�@J�[���,� �7l:��R��Ԏ- .M�:��*hƫ�}�"�3q�hcEY�� �p � C  ��~�z��������e���}���߾�[��Yj���n_��L���嶏� ��� � B  ���d|}���G�$�֞�^�3T��q�I�4�����vK�v �� ���dF��;�Aw��M������3���~�����_�	֯H���Tc�ˇ�mku�����{X���\5���b�x�gT_Y���R�U���7d%    IDATyL�v�[@�7�}���  "  ���
������
5�V����RAw�O�s�N�sH\zW��PP��3���Pp��ӯ���硿'��o����U���.7�aXڌ����=,���,=�"����ڦ�<��-�- ��+�P3,P됴�� � C  �����S"	�7���;�d��]���P�|B������*(��������eHl�$�Y1 d�1  ���E?Yr�8g�t�:ː�֖<t�jq�$��ݯ�Nwk�,:�)6�Ag��A�  rs_��E�59�n�t���
O%- [�0�$��_�?�N��|LL���r����$s 8H� �d���RV�JI�H:A
�>w��l�z'�\�v���آ��jT?l������_�]�fEZ��tiGƀ��׭--]q+����ph�J{O�ڢ���wÞά�'�c&�.B��B��a�t HWL �@@ "IWH�5�w@������
3L���T"��c��mi��M��筻Դ�j}���5��J]��q�D[�@��G�(Zuy�n�Т�uF>%���� @��b@ �
M�:)����[�Ӈ_�R!>~�l�s��fI��! ��1  ��>I�G'��p����>F�������L�M�N�� 9# �$��}��W���ԛ�Py)��Ѧ��D�=kn�w�F������ 2�/# ��-����,Lm��ϙ/�
�a���g�Ք���d_҇$��T p`! �%������6N�r�켗	n\}��Z:;n��J�G���~ @�r@F��ZIOHZ�x�?6莧6�X��e'��eKf�&?��J��A�! ��q��,%	B&+�̈N��?�놇�i�w�H�����o8\�.���VIK$m	z� d��' d)I "I�%=&�1:�ٍ-�����.���U������ע��Λ%-Uh�y  �WO �A� d��?K6��N}��/k��|)̞P�?{��7�ľ�O�ْ�'z/� d�+( �(Er���%͌N���~f�~��Ƃ��}�*���?a��X2S�%qs�l�t��Չ�O� ��*
 9J�H�I�JZ�������W����|1��2F�r�lzHm��OJz�����  ��p �B�Z-�ʠWmj�M��k��e�ô�j]q�,-�sH���K��R��A� ��J
 ���H��%ݤ�LY����o/��oWl�֖.��;(Mk��'Nכ���hA�m
-2�@��> ��� �P�AH��H�<�/mۯ?�ܪ��핟^�3F:vz��[8U�kJ�Cw��O)4�<E��\�+\Q��4�I:U�w�-+��}���;��=ڱ��E�X��V�#��-GMԤ�U�6}\���M�� ��
 y�A r��o)�vHBkw�iٚ=z�����ޛk���+u�Ct��5gb]��_��EIL'o ��� �G!%��#�J�"�c�VmjժM�Z����Yذ��D�'�k��-�Ѡ�'ԥ�C���J�[�`:�!� ���
 # �@D�J�Z�e��Sm<0���mZ��Mkw��]��ݖt2�Qc|}���X�#&�k�z͝T�vG�^�Z:�Shzݴx @�q���a"I�j�X��"iռ%���O��lצ����ڥ��]��ڥ���l)��,Ӕ�*Mo��Ԇj�W�9��P]�I6��e�~#�w��3y3� ��� 0²D�д���겕������ڥ�>�m�՞�^�t��m��WG�:z��hu��RO5���(U}U���PSm���Vh\]��j�5��Zc�ʲ�ŀ��~~��4 Y\u�@�D$i��7HzS�1�U�"��P0�;���а�H�o���Bi��%C�k�V�J
�Ө�i7�db��Ï�%��& (�� P`9"��~b�q���\3-�VJzZ�
��sl�%C (,�� P$"%
M�{�����P���I�v�X�B-���]#�yI/+͙��!� ��� ���`$�'i�B-&�%M�45��$�I��]c%e4�;�>�VߧР�풶I��{K��I�A�Nx @��� �@��d�%5(�T����z�Ƅ�ޯ����=
����^�( P��R�(S�`��t ���U  KPB� �Wr 8�����@ \\� ���T                                                                                                                                    �S� 8�Xks�Ø�|�r\�x<�\�O�K H��$��JT��}_��e���6���]LvLƘ��o�Mx,��#Y�s���X��r�秵6�qf{�A����ʗ�8�J]  -���4����8
��D*�A�/T��E6�e��@�� p&�
S�;�.�~��;��'��e�w.�Q��|���/���,�zN�&��pp  ��t*_)����4ER��Z���F2m��"i��}Y�UE(Ǌ�XI�%Uk�1��%i���L�9�*��R)����:7�+�=�)�]�I�P��&i0�<��k4|� ���dXI7�HZ*�dI�ZkU����nI�ÏJzF�S�veR�TRS@�r��7*tL�%Ͷ�6���ݒ�Jz2�����t�888����t6M�0I�J��Cݒz$�*(n��C҆�kä��;:�!Y��I:U���8k�I�)��/i��U
}����B��)˘Ar��%�n<�z$ݢ��  Iq�@���{����c.�4�q1��笵x�w��W�m�������I�Zk/�t�$��^I5��!�n�*�)eyL�[k���|���y���!鯒^�dpw�-��s}���1�B�;?�Xk�y�/$��jc���^	��S���*�*S�VI:.�{��@,�
 ����P%)I%�k�Hz�F�zc%���9I�m�N������Ic�G%5eS�4m6��@�OՒ����qͲ־�P�������6��n��%��l�+�4��S���ە�J�U(����G�6��je�*��6h��[�1W䩜NcN��<&�@�P���.
�"]a�~e���>k�Ò�����0��b�}V�g2yc�G���Yk�c����4�Z�}k�K��)%ﾔaW�K4���$n���Z��Z{������587�"�4�ϩ���a����w(���F�Y��e�ڻ$MK�����󼡩��1�籜���2(0 ���T�>�4�3��$\y���iT�gZk��� �1��ef������T�l�dkZ�<�磠�$�o�}���_*�g9�2	��8?/�־l��8�2�p��v���F�)�� �1��4cʘ����=�  ��%�� U���+k폔���2�T��&���y��U�9)T��1c�U�� ���>�����c�g��X#��.I��8?+}߿�Z�+�f�*�Zk�m���,�<��IƘq�-�ƘCb�7 �E  -�+��7�<d��|D�Z��?�*4�Ea8<<��Dd�e�L���+�sR|��,I����1�NJ�1�Ƙ?( XOp�̪VFK9��b��T��%�EI*�2 ig�RT���Z�S���ʥk���*6P�.<��g��o�� %8'��9V���ਜ.��������$��h�؏�r(  ���*4]l����Z۟�B���~����*ޙk���H�I���Ϥ�^��1��<韛^O\Ŝ��~/�xw%t�TI�*�IJ|��NX$FK9�����wA��J��Hz�)-��G��Cә��</�Ӭ�?S�M�����uA]�Fi+�$�Z�_�.Ls۸����fg�G���_��������d��@� Ȋ�yc>Y�r$�y޽�iL#���Jk$=�n�k��*����bv��fԷ|Ĳ��D����|��y���ь1_�<�$�����f��@X�X �JR�g��~$˒�.I�ML4#O��k%M�g�\3�|�������DR����t��T��g�Rk�-��D'��hi�7Z�	��@ d$�e�ZI�]�D��w��ߝ���TL�$e�Xk�g�-�.c�x�1fq&o����ȯ��$��nI�#Y�lXk�F�>F � @F<�;���B�#	�y��c�]�P!
W��������Ƙs]�|��~-�w�󼹣��U,k����1i���Hz�@�J��y�$�� \ JRQ������'I�3y�1f��t0}��נ��Ʃ7c�Hg�p��WT|S'gbFl�՚�B*M��
] ů�+ ��1f��w�Ic��B����X��_�����IƘ�.D���L4�Y4���c�3B��k�U�%�?V�+VQ���\ҖB�@�+-t ���߇�v�S��Ƙ�KڪPEkP�8I�}�_l�9U��Dc�&�D�Ƕx�'km��w�^�@+���y���B����1�|���+��? �3R�g���Y�E���1�RI�7ƤjιB�����Z{��yO+tnVK�a�=G�Iy��c�I�Ĥo�4�3;�L���H:'��Xk�y�-il�c�]} �E �@ ���WH�<��6�|�Z{���$��P��1'���1�*EU⭵7c���΍1��Vf\��^6�\e�}2���b��Oç�%�s����1H��-�Ш�N�t���K�1�4����c���b����e��k��?5�|I��;}�s\�����kZ%�|6ƴIz6�L��͹���mOw���� H�+�8A��1g���B�t��c��2H�Ӓ>a��m����Ƙ/J�����;�A���~�g�r ~/�IO&��Yk�$}��v%�25%�MnĄ�q�Bco� i�1�c����-)�1In��~c��>f��Z6|�+%-
���Xkߜ�,R�� �R��: ��@Q�#"�����Z�#I�Kj��%�[}G5��vI�Sh��ogZ�	�Lҙ��<�e�.U��UtY���b��XҀ�2��a^3��I��1�dI-���.M1��[�n3k�����ӹ�o��t��{�_�K�ͦ�Е����#�`" (2��y��0��%}�Z;(���)(IV2Ɯ ���Υc�Ƙ^cL�c����^ �	k��#�CЪ�a�c>�pW�D����1r�b�ٰ��,����dAH�\3�(�Eq��b�g�Jty
��<������ �����Ii|MC�1�j��lxlI��fs�4û�κ�c�*iO��m��Ƈ+�_������e(���J��(�Y�ꢏ'&@^�h?-��})61z|C��2�c��Q9���2`_q��
>��!� �� H�s�uo���L����H%2r�>��Me&�6�[�1	���vI?z!�����pKS�1�:Ge9LR�HV �����k��w9ڍ	��(I���I�k�ޠ�"�Ut�K���r��u.������s� X� @ ��UE}���`�M��%�kIII�]�K�vN�Ͱ�����`���c�-W��ޡ�����1�
q7:j��f;%(�3W��<9�<��D�E��@$ZT��0�Lc��U��� @������~F	���/;�!�#��J�����;#�T�t��.�q�Q��R�%I�8�U�SH4��4G�?��A��}G]�uT���� ��� @���'<k�S������ú�$0"���������I�"W"i����U��Uc���c\�<��u8�{��ϾU�.���?1:0��2�)k��tV\O�E�	�J< h@ ��I���m)�7c�x�Y��%km� '-QwΟwP��?9�k$}�e]�$��\�����)fR�<|쾤:(RI�<�J�k F�:G���kA� Y�mȵ,�}����ce�ee��cs�Ek�$%Z�����c[ꬵk���� Pp.��8�U9�glB�53T+4�QY�\m��IJ�I$���Չ*���j��ǽ/��Hr�}e,��NG�':.W�e܊�9tr�]�:6 (  ��B�n��PI�)������MQ�O|E���C�FIk��WI�'>$w����9TZ��R0"��NG��ڻ:޶lޔ �ls4e.��t�D��y��+�1_ʰ�Z+�(IGc�m����e��f��
ؾ"���<�U� ����c���:�(���'Q燓�R�>�y�5 �1  ���(�zG���tc��	^sU)v���$Yk]#;�<��ԛ�eX 5���wY�(�]��bm (*�� HGo�M�2V�fGy�+Q?'������2�Ի�c��ki��\L��* I�
�k�`�d"Ĩs����hF  A]��166!A�ͥDw�]U��km�~W���
�+�.2�<o�$Q�M޾��j�+�� rF, ���(�#哉D����bnLG���Y.ʤ�5�\,�(I����ekzlB�-R��C�΃��|  '`U��.��}Q�K4>`������]�β+�1.
�yޮ����c����.���z���p���LߐdJ'ߥ�" ń @:� Ƙ�Ƙ��ǵ����ne��G���d��*�����-�r�}e*(�2�L���dU�]�Gș�ƘC$MrP�nk�>G��@�  '���y�e}�1�DGy�kX S�sQq5Ƙ��^Hw��p�R)�M�#( I�X�y�K���E�Ƙ7cJ����(������`T" ��\e����c�0<��^�yl�r�ɦ1]�e��Xk/JT9L��h�y��1.ʣЂ�#jpp��iI�}?08��vk����ZG�g�	�m	
�8*�G� @Q! ���hm	c̅��͍<O0&����~�+��V3�0�|�y�:�3#ы��i���/���!i}l�#-< �c��(ˡ`1�x��Q����#�Z�"�al���<IotT��c�c��t� �O  �
W|:$��(�Jk�����t��+]�N�l�:WH�����vp�1�rTi������`2|\�\�o�}6(��z��|�1����J�E+\��$��(��y�,�� �5�f E*�Q���f���G
_��U����f�$���ܵ�\�y޻�x�$k�\�A���+#��H�8{W>|�x�گ�ڇ�y�UģZ��t�/k폭�cS�8�~�Ƙ+%��U9$=�0/ (  ���?��c>,�V%	,b*��UN�어*�|ck�풖��k�k���D�<�{�Pwͣ�e�����e�Kz<�6u�/I�+�^IU�6�
B�n���avHZ�0? (  �$�����~�������#�^b����r7�HT�ˊk���o�>-)Ug�S$���Y�$��a~�M�0��D�׍1�r���ږ�ʞ���p��)�B�jj�R������Aٷ�ű����};�k� ��  �R���*�<d���ik�]��%�.��&I��^�e��c@�Z~�e��TZk��־$��NThM�1
�������G%�xߏ'�)ʥzIu�ǙƘ'�1_v�3c�]�V��~8pi���k�=��#i�B�>Y�ɒ�1Ƽb��O9>$����@��	��U������<�D������+t7��Zېc�ɺ`I�~��T�;ݙ�g����<�2��:B�*��IO(�2�Z�X��<��J�m��*�Xk�r��2I�־3��<�HժP0 8 � �ğ��b��d��њ��A)ye��s���M�]#��%Ƙ%#��$mIs�'$�,i^�����_[k�%���m� %���c�;�e�р�r%�_H�;b%�k�/}�����@%r�s]��Dۏ��3��y�O�~�@��@�nT�d�H�K��Gyŵ�����֕���=�Iz%e��;%�T�r @>P�T FD�1�K�.D�VBO�I��^�<��ޠ���c>���Lc�������	za��d@4 	%���R��uA�(�I�2�|P�Wx�5I_��u4WZ�����h�k��Jr|w�����[��� �o  �a�	�� )�
X�<I��o�ڛ�Z"�|c��=���<oDV=![=���\20�|L��&G����q }� ����T�7c.���	K��C�Ъ֟R�U��Bx���"���ƘK�`R���1�����nI�NK�{�1{��H��, r@�Z(���1W�v[J��V�|ߏ,L�c�y����.\.��7J
��U  �IDAT\g����Zi��1WI�����a��R�{~J�1U�*���H@B\� ���2{S��K1�I�$�ҷ��Ik���k�/%}<Qw����-�#�1�jI�J�A��w����p�Qk��0ƼSғA/��@ �" ��O�1WH�)tAb${��l��c�i
��^4��ߔt���v�����ߜ��i��PRw���Ʈp��p2�QH@J  ҒƝ�ۍ1K%m��+�]���ݒ�Zk�U1�ľ�/+�KQt2
�?m�Y$�d�:�4���Ƙ�U�L-3Ɯ �B 
� @�Ҩ�=+�xk��U]�r�vc������蝹)+3�+�w��$�Y>�Q--�{'+EW�t��4�{^�	ဲ�gWx��3%mM��($ m  2��bd�m���pkH`���a���1Fя ��#-�J����Zk��Fnf�W�]��"iS$1(I֒Y!=��\>
����gH��1&i �iE<��M��r���ۻ�(�������oQ,�h�@�A��A1$.�e�� �h��I�G�'1:=��L�br��f��n<"h4e=&����N�]����?�ŭ[�[�vuUu����9��~�����������Wv��+Wf�ƈ�Y�FĒ��ɇ�ig"i�M��ňx:p��	�.��2�0�͓�8���~f����̷��Tiǻ<"6 �>>�l�r����X�Y���]���w/��J�	�W O��g�amjD���wG�c�����a����H�w�~]����Y$�X���M��lGm6d����
E�)��̼�(�K2�+T�H��a� o8�r���t�צ��>�,7Dį _�ul���O�3�����h�s�Z��k��� f&/��S �s����C���(����7g�/����>N��O�_�io��/EqAf~:3�Lz�;{�#��C˲|UD<x�?���#�|����,�$�WD�N��SI��88�,�#��"�!�,p���ws�y+UmÏ�������w3���͹�`r��'��^�ߛ��p���QeY��w�l��[�k����ff~�[��F㮥}kL6�w����Y��s&"����GԿ�}���Mo�z�������W3���q��^�k��[ϸW'Y�J�f�}�j~T��{��3��e"ig�WDҪ�ڮ�45K5�cw���c�Z�e�$xd.�)�{�������!Y�Z�k���ۛ4�Z�+�T��ߌ	�������4��d�@o�����(�\�y{�޲�_���')���4 _o�̮��sW����L2$�%I�j�@o=�V�>ή��iw������4<�i�I��	��5�T�2�k�8�Gp���Z\���B���ܕ5;����J�$I�$I�$I�$I�$I�$I�$I�$I�ơ-$I{���;o��N?��5.�$�]v~|>I��0�&����< ����矿h�p8�(��y��q�aÆ5-�$I{+IS�y�=��z��$&�6m��N[��I��w�	�����Mk�DDS��������HҴ3�4�����4�]��+<;"���s#��G���l�%ijL�(�D�����p�%�b����I��2& ���̿��3"�h'���p�f��@��Ur�p�S�n������ �4�L@$M�%j?g��=����e�M�^o��px4�x.��1�KҪ���E�G���l�*i*�J@"b�k��2����qT��^o�H��l������=^�/I��'"�m����,�E� ��g��cv�$���r�g �u���a�!�7nܸhY����V��۷o_�}ff��,�#�،N��5FEQuw����������=�ߣ������5ۼy�ueY�{��n͛�ic"i*��ymD�9pcf�
�{M�
_���n����M@����|������-�	TН�K?|�y�<�z& ͺq�i/��Lr�nY�2j}s�Q&M@"��%MG��4�"�P}]D�ڬt��~��S�a�y��v�������yP��DoG�VٝE1�i'K%�;r���>�M�41�4���À{����o��s;�E��(�m���	�Ӹ�c�rw˼\�]��t��Z��v�ҲM��K��4& ��B;Y�?O�W}��l�\��?� �"`SY�?)˒��h���|�j�ہ� �o���xQ�}�l��T#q� �'���~�����r;p����`q�1"h=x����|xЛ$������aT#�]]�F������;ʹIu/^Y/� �
��)�y�y흖���g����\�3�=xt}�������^?�\�������g���������U�1���|���n���;�������G>�Ŗ�=�}@$M���� ��p6}6o޼l��16Dć���jY�*I �Nf�|��99">��~f^O��w�}�ޕ�O�
L�.���m��e wE����p���}�;?^/�ا� \����lڴi�}yNDl����\KD|xaf`��=>"����t��ܗ�͵�U���n��ֱ���`P�a[D��73?F�L��S�DĹ�7��j1-��F�Z���T��rF�����w�z��Cf����6����]��Fj�m0p�Yg!I{:k@$M����q@f��m�_����K�4�yZ���3�U�}�����GGą1�Dꃁ�GD?3�N��f�Q�nX���x|f��*�ٿ(��3�*��ܘ���cx��xf1/��#������zp"Um�"\p�����Ԉ�U����a�����wf�2���#����[�a��`08��� o��_��X�g�:�;�63�G�O�����_u�pPD��*����γ�yhD���/~��ck������|��pPD<:3/�z6�����`�`0�ɢK���D�T�&�ټ}t���n_��&�h%!� 3�n�����a�#f}~0<��)��c�O��"�8�YT�=�YEq2P���x!���9W��k�s�jJ]��)���æ���e��T��w�{0>�J�D�d������]��}뚠}���8����3sUm�+#���~w��̓��7��\S_����W5Ϸ3r�+�� ��_>���"b�����g����D��Ts���N,n�JJ��,˳��{���� n�O.��a�<�l�̋���E�����d"i��D��d��������zGEıT���t��kn����uҸ�����E���u��u�b��<'3� >5bhݛ����>��De��3��D�>�fA�{���֋^�.������
�_�]Y'	� �����1�Kݟ*��bwH^ #����K��4�Uӷ����\�"x�������_Jռig�#����u����xjDܿy^�s��(^W��u����EY�ò,Ϯ���}���dy%i�d"I�ؾ}{���K��MӮ~�OQ����%3�P����N�-�Q�F���C2�_��zumP%��%u��o ���&�o�����m#��L�}�OQM��Ӛr�2�����ߓ�s����z�A��e��#����&��l۶��dnn������������T��^�����Yfgg盡���5���z4�����j�?"����?G<���I��X�d�C�3�eٮ��w��ffffN�������i�x�(I�{�{�7�β�j25�(
ʲ��t@D�,����̜���(���)���}"��;M�n���F�넺�g�'o��:��f��A�^��#�{���M��KF]g+@�f�����N���e�����֩G5J�[�b}�o��=;;�֭[�g��>�������~&	�(3���5��s�P������������E��q��w�����1��W��F|xИM7K94���6�~���#������n��vޘ��
Ї��� ����F�'�kS�R������;�	��|`D4��]=j�ֽ��.�AM�m��R��R��`q|@D\��z4ϥ�x�����xxD����6Ww����^QՒ�_��K�.d"i��	����^�4�*Pn%�[�é�Q���V򦽓X�Zc��>���H���o?����l�ۿ�j�����w����;n����K�SKm�����[�&�<l�k������|_��Y-��g�l��n9�!�O�j�̑�k|L��mv�v��'3��7{ֈeo��Cd)� ��/�tW�̧�ߢ�4�;������]�����!���z$�uWߏ&Hߺ+�0���Q��=2"��L.�
��$i�f"iZ� ��Ӄmt�G���?rդvWR7���?���b�Pŉ�M�l������E1�o���aQ�׈�s"�]�o	eYޱ�V���1�4��v��FĸQ��T�n5|�*���(��˲\ؗe�e5�i��>���z?�d�X8k��Q�㶚�}G
��G�7|�y[DLt��$iژ�H�V?h�F��1jD<?3G5���7w��ݨ�̐���~eYP���ø�JBF�{W}ݳeY����`�����疺�����w@]�� "�Vg�e��H�F�"i*�g3�?_�W=���m'�hX0��3 "bps�&��i7J>7�z�G6ssLj� �7���P͗��լ���4� 3ڝewQ����G63�O�{1s�$����&iZ]I�����xN������cB���&�m&lO��,w�ur@D�rS�n��LLX����4��,ٰaâ���f�U �~�i�$��}G}� 1h��x"P���%&�\Wu�{E��D��%ضm۶m[�O�Yd&��v��Z�֐	���S��"���7df�3�߼^��NB�]�J,�=�Y��	�3���W��%�� ��[���ٱ ᚴF΢~~}����h��u�}��&)�b�L�͵����^ςu\F5G�C#��o������"Q���b"ij���177���ۛ�_PM�w<�״��5o��2�D�e��/��7���E�̎�+QE�x\�߾;���"�j�ЈxK]&2�;�H oa�����8>3�FN���� �Y�{Q7��-".�o��Q�5.eY�if>v�N���m+��z�_���=&�$����\LIZ7& ��ٍEQ�E���T����}�����Q��D\��|�����=�7_813?��g�j@�������"`[f�23��}en\�&"��Ӕl~�SO=u�i~Ju_3"��'2���ˁWe���\;a04���F�S��gG��LD�="���j��Wf~%3933������:�P��kʲ�$"�Ũg!I{:ISaT�\Ϧ}iD<#"��^��eeY��2pYY��/��x#����R��\��� 3_����EĖ��7�	EQ�|�������x΋+2���0����U��px�p8��\���Wp�M��RuH+pU������
�<�A༝����gsqRY��-��z�Z����7Eħ�����pU��cʲ��eY^|�ճypwf�(3�V��.+�$�6��4���	ܮ �����Z�-F�ՙy�p8|w�׻z�1�D�̼�������T#Bm.��TA�pI�/�!�eY6�E~���F�u��w�E�Yť���]����̼�9D�����3���g�����Dē���>��s1����n8^���_��'�X����<xoD\2���u����g�w3�'��L�Fē3��s��ہ�#�/2�yNw�V��-�s���sou�;�7���m�͂�5G�m�/��6pp4��� 3�A=��$M#�t%M��7���Z��f��"b���}B����9|lD�R%w7��}m���V��i���x�sE1r�Iކ��h�[�P͙�k�=������6m�4���d� P%3[:��������
��9���g�J|�O���G���!�}};S�q�Rպ��?�Q��O?���吤=�M�$M�3�<s��cp�7ڰ8�\" ��do��]7�踗�^I?�1ǿ���.��͈n�j6�֤�?�� ��|n�{[R�d��!i��N�T9��SW%����6V�J��(��w��l%�_�$�;�H��D�߈�G���n�g�cK�V�M�$M�͛7/Z6* n��
��8��;ot���[�ݩ	֨㵚`-0��& l;��s-k5���҄cg���o�Y��F����1���{��ι
M��]�ܳ��=�	�$i�3")|��_�& �"�b���f�u�u���I��p,I�gDm�ˁ���oQM"y�O=RٯQp���c8ĭ$�/I�4��x<��κ!�w�ٙ��I�$i�2�$M������=~0�BDN5�Ե����~�c�a���ͯ$i}��H��B=˷����`A'�Q�%I��ax%I{��䑣tf�'3aJ�vI�^�����J�v�%I{�.�`Ѳ�`��yU����3�\�rI�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I��5������/�    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/index.png-fd48e7160bcfbd53b89f11bc5623eb1f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://exportpath/index.png"
dest_files=[ "res://.import/index.png-fd48e7160bcfbd53b89f11bc5623eb1f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  [gd_scene load_steps=2 format=2]

[ext_resource path="res://script/main.gd" type="Script" id=1]

[node name="main" type="Control"]
rect_pivot_offset = Vector2( -257.91, 248.922 )
script = ExtResource( 1 )

[node name="Label" type="Label" parent="."]
margin_left = 392.5
margin_top = 89.0315
margin_right = 613.5
margin_bottom = 137.032
text = "Bienvenue sur le site de l'amap"
align = 1

[node name="signin_vbox" type="VBoxContainer" parent="."]
margin_left = 375.44
margin_top = 520.892
margin_right = 635.44
margin_bottom = 560.892

[node name="Label" type="Label" parent="signin_vbox"]
margin_right = 260.0
margin_bottom = 31.0
rect_pivot_offset = Vector2( 110.014, 9.58429 )
text = "Vous n'êtes pas enregistré ?
Vous  avez oublié vos identifiants ?"
align = 1

[node name="bt_reg" type="Button" parent="signin_vbox"]
margin_left = 91.0
margin_top = 35.0
margin_right = 168.0
margin_bottom = 55.0
size_flags_horizontal = 4
size_flags_vertical = 4
text = "cliquez ici"

[node name="login_vbox" type="VBoxContainer" parent="."]
margin_left = 390.081
margin_top = 174.66
margin_right = 610.081
margin_bottom = 284.66

[node name="Label" type="Label" parent="login_vbox"]
margin_right = 220.0
margin_bottom = 14.0
text = "Veuillez vous identifier"

[node name="log" type="LineEdit" parent="login_vbox"]
margin_top = 18.0
margin_right = 220.0
margin_bottom = 42.0
placeholder_text = "nom d'utilisateur"
caret_blink = true

[node name="pass" type="LineEdit" parent="login_vbox"]
margin_top = 46.0
margin_right = 220.0
margin_bottom = 70.0
placeholder_text = "mot de passe"
caret_blink = true

[node name="bt_valid" type="Button" parent="login_vbox"]
margin_top = 74.0
margin_right = 220.0
margin_bottom = 94.0
text = "valider"

[node name="acces_hbox" type="HBoxContainer" parent="."]
margin_left = 390.0
margin_top = 372.0
margin_right = 610.0
margin_bottom = 417.0

[node name="bt_prod" type="Button" parent="acces_hbox"]
visible = false
margin_right = 124.0
margin_bottom = 45.0
size_flags_horizontal = 6
text = "Accès producteur"

[node name="bt_adh" type="Button" parent="acces_hbox"]
visible = false
margin_right = 220.0
margin_bottom = 45.0
size_flags_horizontal = 7
text = "Accès adhérent"

[node name="bt_mobile" type="Button" parent="."]
margin_left = 27.6705
margin_top = 25.0
margin_right = 154.671
margin_bottom = 68.0
text = "version mobile"

[node name="HTTPRequest" type="HTTPRequest" parent="."]

[node name="Button" type="Button" parent="."]
margin_left = 110.716
margin_top = 418.116
margin_right = 302.716
margin_bottom = 438.116

[node name="Button2" type="Button" parent="."]
margin_left = 130.254
margin_top = 468.915
margin_right = 298.254
margin_bottom = 488.915

[connection signal="pressed" from="signin_vbox/bt_reg" to="." method="_on_bt_reg_pressed"]
[connection signal="pressed" from="login_vbox/bt_valid" to="." method="_on_bt_valid_pressed"]
[connection signal="pressed" from="acces_hbox/bt_prod" to="." method="_on_bt_prod_pressed"]
[connection signal="pressed" from="acces_hbox/bt_adh" to="." method="_on_bt_adh_pressed"]
[connection signal="pressed" from="bt_mobile" to="." method="_on_bt_mobile_pressed"]
[connection signal="request_completed" from="HTTPRequest" to="." method="_on_HTTPRequest_request_completed"]
[connection signal="pressed" from="Button" to="." method="_on_Button_pressed"]
[connection signal="pressed" from="Button2" to="." method="_on_Button2_pressed"]
           [gd_scene load_steps=2 format=2]

[ext_resource path="res://script/main.gd" type="Script" id=1]

[node name="main" type="Control"]
margin_left = 24.0
margin_top = 8.0
margin_right = 24.0
margin_bottom = 8.0
rect_pivot_offset = Vector2( -257.91, 248.922 )
script = ExtResource( 1 )
__meta__ = {
"_edit_horizontal_guides_": [ 409.558 ],
"_edit_vertical_guides_": [ 289.949 ]
}

[node name="Label" type="Label" parent="."]
margin_left = 10.6847
margin_top = 10.8002
margin_right = 231.685
margin_bottom = 58.8007
text = "Bienvenue sur le site de l'amap"
align = 1

[node name="Label2" type="Label" parent="."]
margin_left = 25.9204
margin_top = 181.481
margin_right = 204.92
margin_bottom = 195.481
rect_pivot_offset = Vector2( 110.014, 9.58429 )
size_flags_horizontal = 0
text = "Vous n'êtes pas enregistré ?"

[node name="bt_signin" type="Button" parent="."]
margin_left = 76.9123
margin_top = 208.003
margin_right = 153.912
margin_bottom = 228.003
size_flags_horizontal = 0
size_flags_vertical = 4
text = "cliquez ici"

[node name="bt_adh" type="Button" parent="."]
margin_left = 40.3661
margin_top = 250.362
margin_right = 191.366
margin_bottom = 290.362
disabled = true
text = "Accès adhérent"

[node name="bt_prod" type="Button" parent="."]
margin_left = 40.1013
margin_top = 305.534
margin_right = 191.101
margin_bottom = 345.534
disabled = true
text = "Accès producteur"

[node name="login_vbox" type="VBoxContainer" parent="."]
margin_left = 10.213
margin_top = 47.7445
margin_right = 230.213
margin_bottom = 157.745

[node name="Label" type="Label" parent="login_vbox"]
margin_right = 220.0
margin_bottom = 14.0
text = "Veuillez vous identifier"

[node name="log" type="LineEdit" parent="login_vbox"]
margin_top = 18.0
margin_right = 220.0
margin_bottom = 42.0
placeholder_text = "nom d'utilisateur"
caret_blink = true

[node name="pass" type="LineEdit" parent="login_vbox"]
margin_top = 46.0
margin_right = 220.0
margin_bottom = 70.0
placeholder_text = "mot de passe"
caret_blink = true

[node name="bt_valid" type="Button" parent="login_vbox"]
margin_top = 74.0
margin_right = 220.0
margin_bottom = 94.0
text = "validez"

[connection signal="pressed" from="bt_adh" to="." method="_on_bt_adh_pressed"]
[connection signal="pressed" from="bt_prod" to="." method="_on_bt_prod_pressed"]
[connection signal="pressed" from="login_vbox/bt_valid" to="." method="_on_bt_valid_pressed"]
          GDST           �   *   WEBPRIFF   WEBPVP8L   /    ���������            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/pix.png-020b9f3317a89806f7e654c1446dcb71.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://pix.png"
dest_files=[ "res://.import/pix.png-020b9f3317a89806f7e654c1446dcb71.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=true
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  [gd_scene load_steps=2 format=2]

[ext_resource path="res://script/prod.gd" type="Script" id=1]

[node name="prod" type="Control"]
script = ExtResource( 1 )

[node name="Label" type="Label" parent="."]
margin_left = 10.1668
margin_top = 9.7253
margin_right = 264.167
margin_bottom = 65.7253
text = "Espace producteur"

[node name="bt_ajouter" type="Button" parent="."]
margin_left = 183.797
margin_top = 131.928
margin_right = 290.797
margin_bottom = 151.928
text = "ajouter un produit"

[node name="bt_commandes" type="Button" parent="."]
margin_left = 34.4961
margin_top = 70.4822
margin_right = 290.496
margin_bottom = 109.482
text = "consulter les commandes"

[node name="produits_vbox" type="VBoxContainer" parent="."]
margin_left = 32.0
margin_top = 194.0
margin_right = 988.0
margin_bottom = 194.0

[node name="Label2" type="Label" parent="."]
margin_left = 34.4482
margin_top = 133.856
margin_right = 168.448
margin_bottom = 147.856
text = "Liste de vos produits"

[connection signal="pressed" from="bt_ajouter" to="." method="_on_bt_ajouter_pressed"]
[connection signal="pressed" from="bt_commandes" to="." method="_on_bt_commandes_pressed"]
 [gd_scene load_steps=2 format=2]

[ext_resource path="res://script/reg.gd" type="Script" id=1]

[node name="reg" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 1 )

[node name="login_vbox" type="VBoxContainer" parent="."]
margin_left = 363.0
margin_top = 119.0
margin_right = 669.0
margin_bottom = 391.0

[node name="mail_vbox" type="VBoxContainer" parent="login_vbox"]
margin_right = 306.0
margin_bottom = 66.0

[node name="Label" type="Label" parent="login_vbox/mail_vbox"]
margin_right = 306.0
margin_bottom = 14.0
text = "Veuillez saisir votre adresse email"

[node name="mail" type="LineEdit" parent="login_vbox/mail_vbox"]
margin_top = 18.0
margin_right = 306.0
margin_bottom = 42.0
placeholder_text = "adresse email"
caret_blink = true

[node name="bt_verif" type="Button" parent="login_vbox/mail_vbox"]
margin_top = 46.0
margin_right = 306.0
margin_bottom = 66.0
text = "verifier mon adresse"

[node name="reg_vbox" type="VBoxContainer" parent="login_vbox"]
visible = false
margin_top = 70.0
margin_right = 306.0
margin_bottom = 246.0

[node name="Label2" type="Label" parent="login_vbox/reg_vbox"]
margin_right = 306.0
margin_bottom = 14.0
text = "Veuillez saisir un identifiant et un mot de passe"

[node name="log" type="LineEdit" parent="login_vbox/reg_vbox"]
margin_top = 18.0
margin_right = 306.0
margin_bottom = 42.0
placeholder_text = "nom d'utilisateur"
caret_blink = true

[node name="pass" type="LineEdit" parent="login_vbox/reg_vbox"]
margin_top = 46.0
margin_right = 306.0
margin_bottom = 70.0
placeholder_text = "mot de passe"
caret_blink = true

[node name="HSeparator2" type="HSeparator" parent="login_vbox/reg_vbox"]
margin_top = 74.0
margin_right = 306.0
margin_bottom = 78.0

[node name="Label4" type="Label" parent="login_vbox/reg_vbox"]
margin_top = 82.0
margin_right = 306.0
margin_bottom = 96.0
text = "Veuillez renseigner vos nom et prénom"

[node name="nom" type="LineEdit" parent="login_vbox/reg_vbox"]
margin_top = 100.0
margin_right = 306.0
margin_bottom = 124.0
placeholder_text = "nom"
caret_blink = true

[node name="prenom" type="LineEdit" parent="login_vbox/reg_vbox"]
margin_top = 128.0
margin_right = 306.0
margin_bottom = 152.0
placeholder_text = "prénom"
caret_blink = true

[node name="bt_valid" type="Button" parent="login_vbox/reg_vbox"]
margin_top = 156.0
margin_right = 306.0
margin_bottom = 176.0
text = "valider"

[node name="info" type="Label" parent="login_vbox"]
margin_top = 70.0
margin_right = 306.0
margin_bottom = 84.0

[node name="bt_prod" type="Button" parent="."]
visible = false
margin_left = 361.051
margin_top = 422.073
margin_right = 512.051
margin_bottom = 462.073
text = "Accès producteur"

[node name="bt_adh" type="Button" parent="."]
visible = false
margin_left = 519.535
margin_top = 422.072
margin_right = 670.535
margin_bottom = 462.072
text = "Accès adhérent"

[connection signal="pressed" from="login_vbox/mail_vbox/bt_verif" to="." method="_on_bt_verif_pressed"]
[connection signal="pressed" from="login_vbox/reg_vbox/bt_valid" to="." method="_on_bt_valid_pressed"]
[connection signal="pressed" from="bt_prod" to="." method="_on_bt_prod_pressed"]
[connection signal="pressed" from="bt_adh" to="." method="_on_bt_adh_pressed"]
          GDSC         "   �      ������ڶ   �������   ���������������ն���   �������Ӷ���   �����϶�   �����ڶ�   ��������������   ����ڶ��   ���¶���   ���������¶�   ������������򶶶   ���������������¶���   �����������������¶�   �������Ӷ���   ���Ӷ���   ��������ζ��   ��������Ҷ��   ������������Ҷ��   ����������¶   �������������¶�   ��Ŷ   ����������   ��������������������޶��   ������������¶��   �������Ӷ���   ����Ӷ��          !   res://elements/bt_producteur.tscn          -                              bt_producteur         panier_init              prod_vbox/bt_producteur        /menu_vbox/produits_vbox/produit      /comm_hbox/qty                           	                           	   $   
   A      I      R      ]      c      k      p      q      r      s      y      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   3YYY;�  Y;�  �L  P�  QY;�  NOYY0�  PQV�  �  �  T�  �  W�  T�  �  �  T�	  L�  ML�  M�  �  T�	  L�  ML�  M�  )�
  �  T�  V�  ;�  �  T�  PQ�  �  T�  �  �>  P�
  Q�  �  T�
  �
  �  W�  T�  P�  Q�  �  P�  QYYYY0�  PQV�  &�  T�  T�  P�  Q�  V�  �  T�  L�  MNO�  (V�  )�  �  T�  L�  MV�  ;�  �	  �>  P�  T�  L�  MLMQ�
  �>  P�  Q�  �?  P�  Q�  �  P�  �  QT�  �  T�  L�  ML�  M�  YYYYYY`         GDSC   
         [      ������ڶ   �����϶�   �������������������Ҷ���   �������Ӷ���   ���¶���   ������Ӷ   �������������������Ҷ���   �����������۶���   ����������۶   ���������Ӷ�      prod_hbox/desc_hbox/desc_text      !   produit_popup/bg_vbox/desc_saisie         produit_popup             
   /root/prod               /root/prod/produits_vbox/produit                                                    	      
                           '      0      1      2      8      B      K      Y      3YYYY0�  PQV�  -YYYYYYY0�  PQV�  �  PQT�  �  P�  QT�  �  �  P�  QT�  �  YYY0�  PQV�  ;�  �  P�  QT�  �  �  P�  QT�  �  �  �  P�  �>  P�  QQT�	  PQY`            GDSC            �      ������ڶ   ������������򶶶   ���������ն�   ������������¶��   �����϶�   ��������ζ��   ������������Ķ��   ���¶���   �����ڶ�   ���������������¶���   ������������������¶   ����������   �����������¶���   �������Ӷ���   ���Ӷ���   ������������ζ��   ��������Ҷ��   ��϶   ������������¶��   �����Ҷ�   ������������������������Ҷ��   �������������Ҷ�   ������Ӷ   $   res://elements/commande_produit.tscn      produit                                                                      )   	   -   
   3      <      G      M      W      X      Y      _      e      m      {      �      �      �      �      �      �      �      �      �      3YY;�  Y;�  �L  PQY;�  LMYY0�  PQV�  W�  �  T�  �  T�	  L�  M�  �
  PQ�  )�  �  V�  ;�  �  T�  PQ�  �  T�  �  �>  P�  Q�  �  T�  �  �  W�  �  T�  P�  QYYY0�
  PQV�  &�  �  V�  )�  �  T�  V�  &�  T�  L�  ML�  M�  V�  �  T�  P�  QYYYY0�  P�  QV�  &W�  �  T�  �  V�  W�  �  T�  �  �  (V�  W�  �  T�  �  Y`      GDSC         %   �      �������������Ķ�   ����������   �������������¶�   �����϶�   �������Ӷ���   �������޶���   ���Ӷ���   ����Ӷ��   ��������ζ��   ��������ζ��   ��������¶��   ���¶���   �����ڶ�   ������������¶��   ����ж��   �����������Ŷ���   ������Ӷ   ���������ж�   �����������������������Ҷ���   �������������¶�   �������Ӷ���   ��������Ҷ��   ������������������������Ҷ��   �������������������Ҷ���   ���������Ӷ�   "   res://elements/editer_produit.tscn                                 .         ,          -        ¥        edit_prod_desc        /root         edit_prod_tarif                                                   )   	   0   
   5      6      I      ^      i      z      {      |      }      ~      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   3YY;�  Y;�  �L  PQYY0�  PQV�  �  �  P�  PQQT�  �  �  T�  P�  R�  Q�  �  �  P�  Q�  �?  P�  Q�  �  W�  �	  �
  T�  �  T�  L�  ML�  M�  ;�  �>  P�  T�  L�  ML�  MQT�  P�  Q�  �  �  T�  P�  R�  Q�  W�  �	  �  T�  �  P�  Q�  YYYYY0�  PQV�  ;�  �  T�  PQ�  �  T�  �	  �  �  P�
  QT�  P�  Q�  �  T�  �  YYY0�  PQV�  ;�  �  T�  PQ�  �  T�  �  �  �  P�
  QT�  P�  Q�  �  T�  �  YYY0�  PQV�  �  T�  T�  P�  Q�  �  P�  PQQT�  PQY`            GDSC            �      �������������Ķ�   ����������   �����϶�   ��������ζ��   ���ն���   ���¶���   �����ڶ�   ������������¶��   ����ж��   �����������Ӷ���   ���ζ���   ��϶   ����Ӷ��   ��������������������Ҷ��   �������������¶�   ��������������   ����ڶ��   ��϶   �������Ӷ���                         /root/adh/Label3      Coût total :         ¥                           	      
            !      5   	   6   
   7      =      X      Y      Z      [      b      p      w      |      �      �      �      �      3YY;�  YYY0�  PQV�  W�  �  T�  �  T�  L�  ML�  M�  W�  �  T�  �>  P�  T�  L�  ML�  MQYYY0�	  PQV�  W�  �
  T�  �>  PW�  �  T�  �  T�  L�  ML�  MQYYYY0�  P�  QV�  �  T�  L�  T�  ML�  M�  �  �?  P�  T�  Q�  ;�  �  )�  �  T�  L�  T�  MV�  �  �  T�  L�  T�  ML�  M�  T�  L�  ML�  M�  �  P�  QT�  �  �>  P�  Q�  �  �	  PQY`               GDSC         3        ������ڶ   ����������   �������������¶�   �����϶�   ������ζ   �����������Ӷ���   ���������Ŷ�   �������Ӷ���   �������޶���   ���Ӷ���   ����������ڶ   ���¶���   �������������������Ҷ���   �����ڶ�   ������������¶��   ���������Ӷ�   ���ζ���   ������Ӷ   �������¶���   �����������Ŷ���   �������������¶�   �������Ӷ���   ��������Ҷ��   �������������������Ҷ���   ���Ӷ���   ����Ӷ��   ���������������          "   res://elements/editer_produit.tscn        edit_prod_desc     "   Modifier la description du produit        edit_prod_tarif    1   Modifier le prix du produit (chiffres uniquement)         edit_prod_new      !   Saisir une description du produit         edit_tarif_new     /   Saisir le prix du produit (chiffres uniquement)              /root/prod/produits_vbox/produit      /prod_hbox/desc_hbox/desc_text        ,         .               /prod_hbox/desc_hbox/desc_tarif        -        ¥        /root                                                     -   	   6   
   C      L      Y      b      o      x      y            �      �      �      �      �      �      �      �      �                     -     8      E  !   V  "   k  #   t  $   z  %   �  &   �  '   �  (   �  )   �  *   �  +   �  ,   �  -   �  .   �  /   �  0   �  1      2     3   3YY;�  Y;�  �L  P�  QYY0�  PQV�  W�  �  T�  PQ�  &�  P�  PQQT�	  �  V�  W�  �
  T�  �  �  '�  P�  PQQT�	  �  V�  W�  �
  T�  �  �  '�  P�  PQQT�	  �  V�  W�  �
  T�  �  �  '�  P�  PQQT�	  �  V�  W�  �
  T�  �	  YY0�  PQV�  &�  P�  PQQT�	  �  V�  �  T�  L�  ML�
  MW�  �  T�  �  �  P�  �>  P�  Q�  QT�  W�  �  T�  �  �  P�  PQQT�  PQ�  &�  P�  PQQT�	  �  �  P�  PQQT�	  �  V�  ;�  W�  �  T�  �  �  �  T�  P�  R�  Q�  �  �  T�  PQ�  �  T�  L�  ML�  M�  �  �  �>  P�  Q�  �  �  T�  P�  Q�  �  �  T�  P�  R�  Q�  �  P�  �>  P�  Q�  QT�  �  �  �  �  �  P�  PQQT�  PQ�  &�  P�  PQQT�	  �  V�  �  T�  L�  ML�
  MW�  �  T�  �  �  P�  �>  P�  Q�  QT�  W�  �  T�  �  ;�  �  T�  PQ�  �  T�	  �  �  �  P�  QT�  P�  Q�  �  T�  �  �  �  P�  PQQT�  PQYYY0�  PQV�  &�  P�  PQQT�	  �  �  P�  PQQT�	  �  V�  �  P�  PQQT�  PQ�  '�  P�  PQQT�	  �  �  P�  PQQT�	  �  V�  �  P�  �>  P�  QQT�  PQ�  �  P�  PQQT�  PQ�  �  T�  T�  P�  Q�  �  T�  �
  �  Y`GDSC      +   '   �      ���Ӷ���   ����������������Ӷ��   ��������Ӷ��   �������Ӷ���   ��������������ٶ   ��������������   ���������������   �����������򶶶�   ���������¶�   ���������������¶���   ������������¶��   �������������¶�                              gino      123       gino@coco.co      Ginola        Gino            xxSylvie74xx   	   batman123                s74@coco.co       Machin        Sylvie              La ferme Tagueule         lftg@coco.co      Dulac         Michel              Roberto Dellavega                rdlv@coco.co      Zorro         Robert        coco@coco.co      Collard       Colin         mic       micheline@coco.co         Mitchel    	   Micheline         La maison poulaga         Les chiens de Lacasse         Fromage au lait cru 100g      @      Pack de 6 oeufs       Fromage de montagne 200g     �@      Doberman de combat     @                                                      	   $   
   %      *      ;      L      ]      n            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   3YYY0�  P�  QV�  �  PQT�  P�  QYY;�  Y;�  �  Y;�  �  YY;�  N�  �  VL�  R�  R�  R�  R�  R�  MR�  �	  VL�
  R�  R�  R�  R�  R�  MR�  �  VL�  R�  R�  R�  R�  R�  MR�  �  VL�  R�  R�  R�  R�  R�  MR�  �  VL�  R�  R�  R�  R�  R�  MR�  VL�  R�  R�  R�  R�   R�!  MRYOYY;�	  N�  �  V�"  R�  �  V�  R�  �  V�#  RYOYY;�
  N�  �  VL�  R�$  R�%  MR�  �	  VL�  R�&  R�	  MR�  �  VL�  R�'  R�(  MR�  �  VL�  R�)  R�*  MRYOYY;�  N�  VN�  V�	  R�	  V�  ORYOYYYY` GDSC   *      O   �     ������ڶ   ��������Ӷ��   ���������Ӷ�   ��������Ӷ��   �����Ӷ�   �����϶�   ���������ζ�   ���������Ŷ�   �����������������Ҷ�   �����ڶ�   ����������������Ӷ��   ������������������Ҷ   �������������������Ҷ���   ���¶���   ��   ��϶   ���������¶�   ���������ζ�   �����޶�   ������Ӷ   ������Ҷ   ����������ζ   ����ڶ��   ��������������   ��������������������Ҷ��   �����������������Ҷ�   �����������������Ҷ�   ����������¶   ������¶$   ��������������������������������Ҷ��   �����¶�   ������������Ӷ��   ������Ŷ   ���϶���   ���׶���   ��������   ����Ӷ��   ������������������Ў����   ���������؄�������Ҷ   ����϶��   ���������¶�   ���������ⶶ      res://adh.tscn        res://prod.tscn       res://reg.tscn        res://main_m.tscn                                                Bienvenue,                              Mot de passe incorrect        Nom d'utilisateur incorrect    E   https://raw.githubusercontent.com/amsapp1/amsapp1.github.io/main/test         data1      
   show data2        Content-Type: application/json                                       #      $      *   	   3   
   4      5      6      <      C      D      E      K      R      S      T      Z      n      s      {      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %     &     '     (     )     *     +     ,     -     .      /   '  0   (  1   )  2   /  3   6  4   7  5   8  6   >  7   F  8   G  9   H  :   U  ;   c  <   j  =   k  >   l  ?   m  @   n  A   t  B   }  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   3YY;�  �L  PQY;�  �L  P�  QY;�  �L  P�  QY;�  �L  P�  QYY0�  PQV�  W�  �  T�  PQYYYY0�  PQV�  �	  T�
  P�  QYYY0�  PQV�  �	  T�
  P�  QYYY0�  PQV�  &W�  �  T�  �  W�  -T�  �  V�  ;�  �  �  )�  �	  T�  V�  &�	  T�  L�  ML�  MW�  �  T�  V�  �  �  �  &�  �  V�  &�	  T�  L�  ML�  MW�  -T�  V�  W�  �  T�  �  �  &�	  T�  L�  ML�  M�  V�  W�  �  T�  �  �  W�  T�  �	  �  W�  T�  �	  �  W�  T�  �
  �	  T�  L�  ML�  M�  �	  T�  L�  ML�  M�  �	  T�  �  �  (V�  W�  �  T�  �  �  (V�  W�  �  T�  �  �  YYYYYY0�  PQV�  �	  T�
  P�  QYYY0�  PQV�  �	  T�
  P�  QYYY0�  PQV�  W�  T�  P�  QYYY0�  P�  R�  R�   R�!  QV�  ;�"  �#  T�$  P�!  T�%  PQQ�  �?  P�"  T�  Q�  YYYY0�&  PQV�  ;�"  N�  V�  O�  ;�'  �#  T�?  P�"  Q�  ;�   L�  M�  W�  T�  P�  R�   R�  R�(  T�)  QYYYYYYYYYY`        GDSC         4   )     ������ڶ   ������������¶��   �������������¶�   ������������򶶶   ������������¶��   �����϶�   �����ڶ�   ��������������   ����ڶ��   ���¶���   ���������������¶���   ���������������������Ŷ�   �����������������¶�   ��϶   ������������¶��   �����Ҷ�   ����������������¶��   ����������۶   �����������������¶�   �������Ӷ���   ���Ӷ���   �������Ӷ���   ��������Ҷ��   ���������������������Ҷ�   ���������������   ����������   �������������¶�   �����������������������Ҷ���   !   res://elements/champ_produit.tscn      "   res://elements/editer_produit.tscn                -        produit       produits_vbox                edit_prod_new         /root               produits dict : 
                                                        	   !   
   '      -      ;      ?      @      F      L      T      b      i      n      o      p      v      z      ~            �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,     -     .     /     0     1     2      3   '  4   3YY;�  �L  PQY;�  �L  P�  QY;�  �  Y;�  LMYYYY0�  PQV�  �  �  T�  �  W�  T�	  �  �  T�
  L�  M�  �  PQYY0�  PQV�  &�  �  V�  )�  �  T�  V�  &�  T�  L�  ML�  M�  V�  �  T�  P�  Q�  �?  P�  QYYY0�  PQV�  �  PQ�  �  PQYYY0�  PQV�  )�  �  V�  ;�  �  T�  PQ�  �  T�  �  �>  P�  Q�  �  P�  QT�  P�  QYYYY0�  PQV�  ;�  �  T�  PQ�  �  T�  �  �>  P�  T�  Q�  �  T�  L�  T�  ML�  R�  R�  M�  �  P�  QT�  P�  Q�  �  T�  �  T�  �  ;�  �  T�  PQ�  �  T�  �  �  �  P�  QT�  P�  Q�  �  T�  �  T�  �  �  T�  �	  YYY0�  PQV�  �?  P�
  Q�  �?  P�  T�  QY`      GDSC         5   �     ������ڶ   �������   ��������Ӷ��   ���������Ӷ�   �����϶�   ���������ζ�   ��������ζ��   ���ڶ���   ���������Ŷ�   �������������������Ҷ���   ���¶���   ��϶   �����ڶ�   ���������¶�   �������ζ���   ���ٶ���   ������Ӷ   ��۶   �����۶�   �������������������Ҷ���   ��������������   ����������������Ӷ��   �����޶�   ������Ҷ   ������������������Ҷ   �����������������Ҷ�             res://adh.tscn        res://prod.tscn                                                9   Votre adresse ne figure pas dans notre base de données.
      3   Veuillez nous contacter sur amap100bornes@gmail.com          3   Veuillez renseigner toutes les infos pour continuer                          	                           	   !   
   ,      -      .      /      5      B      J      _      c      i      t      }      �      �      �      �      �      �      �      �                    !   !  "   "  #   (  $   V  %   \  &   j  '   q  (   t  )   {  *   �  +   �  ,   �  -   �  .   �  /   �  0   �  1   �  2   �  3   �  4   �  5   3YYY;�  Y;�  �L  P�  QY;�  �L  P�  QYYY0�  PQV�  W�  �  �  T�  PQYYYY0�	  PQV�  &W�  �  �  T�
  �  V�  )�  �  T�  V�  &�  T�  L�  ML�  MW�  �  �  T�
  V�  �  �  �  &�  V�  W�  �  �  T�  PQ�  W�  �  T�
  �  �  W�  �  T�  �  �  W�  �  T�  �  �  &�  T�  L�  MLM�  V�  W�  �  �  T�
  �  T�  L�  MLM�  &�  T�  L�  ML�  M�  V�  W�  �  -T�
  �  T�  L�  ML�  M�  &�  T�  L�  ML�  M�  V�  W�  �  �  T�
  �  T�  L�  ML�  M�  &�  T�  L�  ML�	  M�  V�  W�  �  �  T�
  �  T�  L�  ML�	  M�  (V�  W�  �  T�
  �
  �  YY0�  PQV�  &W�  �  �  T�
  �  W�  �  -T�
  �  W�  �  �  T�
  �  W�  �  �  T�
  �  V�  �  T�  �  �  &�  T�  L�  ML�  MV�  �  T�  P�  Q�  (V�  W�  T�  �  �  W�  T�  �  �  (V�  W�  �  T�
  �  YYY0�  PQV�  �  T�  P�  QYYY0�  PQV�  �  T�  P�  QY`       [remap]

path="res://script/adh.gdc"
           [remap]

path="res://script/ajouter_produit.gdc"
               [remap]

path="res://script/bt_producteur.gdc"
 [remap]

path="res://script/champ_produit.gdc"
 [remap]

path="res://script/commande_produit.gdc"
              [remap]

path="res://script/editer_produit.gdc"
[remap]

path="res://script/global.gdc"
        [remap]

path="res://script/main.gdc"
          [remap]

path="res://script/prod.gdc"
          [remap]

path="res://script/reg.gdc"
           ECFG      application/config/name         Testamap   application/run/main_scene         res://main.tscn    autoload/global          *res://script/global.gd )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres         