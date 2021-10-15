#!/bin/bash
new_file_name=_posts/$(date '+%Y-%m-%d-')$1.markdown
echo $new_file_name
new_line2="title:   $1"
new_line="date:   $(date '+%Y-%m-%d %H:%M:%S +0800')"
cp _template/template-1.markdown "${new_file_name}"

sed -i '' '3s/.*/'"$new_line2"'/' ${new_file_name}
sed -i '' '4s/.*/'"$new_line"'/' ${new_file_name}

# sed -i '4s/.*/'"$new_line"'/' ./${new_file_name} 
# sed -i '4s/.*/'"$new_line"'/'  "${new_file_name}" < "${template}"
# sed '2a\
# text to insert
# ' < "${new_file_name}"
# echo "$(date '+%Y-%m-%d %H:%M:%S +0800')" >> "${new_file_name}"
              