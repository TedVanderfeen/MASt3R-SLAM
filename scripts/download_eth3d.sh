#!/bin/bash
dest="datasets/eth3d"
mkdir -p "$dest"

sequences=(
    cables_1
    cables_2
    cables_3
    camera_shake_1
    camera_shake_2
    camera_shake_3
    ceiling_1
    ceiling_2
    desk_3
    desk_changing_1
    einstein_1
    einstein_2
    einstein_dark
    einstein_flashlight
    einstein_global_light_changes_1
    einstein_global_light_changes_2
    einstein_global_light_changes_3
    kidnap_1
    kidnap_dark
    large_loop_1
    mannequin_1
    mannequin_3
    mannequin_4
    mannequin_5
    mannequin_7
    mannequin_face_1
    mannequin_face_2
    mannequin_face_3
    mannequin_head
    motion_1
    planar_2
    planar_3
    plant_1
    plant_2
    plant_3
    plant_4
    plant_5
    plant_dark
    plant_scene_1
    plant_scene_2
    plant_scene_3
    reflective_1
    repetitive
    sfm_bench
    sfm_garden
    sfm_house_loop
    sfm_lab_room_1
    sfm_lab_room_2
    sofa_1
    sofa_2
    sofa_3
    sofa_4
    sofa_dark_1
    sofa_dark_2
    sofa_dark_3
    sofa_shake
    table_3
    table_4
    table_7
    vicon_light_1
    vicon_light_2
)

for seq in "${sequences[@]}"; do
    file_name=$(basename "$url")
    echo "Downloading https://www.eth3d.net/data/slam/datasets/${seq}_mono.zip..."
    wget "https://www.eth3d.net/data/slam/datasets/${seq}_mono.zip" -O "$dest/${seq}_mono.zip"
    echo "Unzipping $seq..."
    unzip "${dest}/${seq}_mono.zip" -d "$dest"
done
