#!/bin/bash

cd (dirname $0)

THE_FUNCTIONS=""

#THE_FUNCTIONS="$THE_FUNCTIONS .AddDate              "
#THE_FUNCTIONS="$THE_FUNCTIONS .Format               "
#THE_FUNCTIONS="$THE_FUNCTIONS .Get                  "
#THE_FUNCTIONS="$THE_FUNCTIONS .GetPage              "
#THE_FUNCTIONS="$THE_FUNCTIONS .Param                "
#THE_FUNCTIONS="$THE_FUNCTIONS .Scratch              "
#THE_FUNCTIONS="$THE_FUNCTIONS .Unix                 "

THE_FUNCTIONS="$THE_FUNCTIONS _AddDate              "
THE_FUNCTIONS="$THE_FUNCTIONS _Format               "
THE_FUNCTIONS="$THE_FUNCTIONS _Get                  "
THE_FUNCTIONS="$THE_FUNCTIONS _GetPage              "
THE_FUNCTIONS="$THE_FUNCTIONS _Param                "
THE_FUNCTIONS="$THE_FUNCTIONS _Scratch              "
THE_FUNCTIONS="$THE_FUNCTIONS _Unix                 "

THE_FUNCTIONS="$THE_FUNCTIONS index_                "

THE_FUNCTIONS="$THE_FUNCTIONS Math                  "
THE_FUNCTIONS="$THE_FUNCTIONS absLangURL            "
THE_FUNCTIONS="$THE_FUNCTIONS absURL                "
THE_FUNCTIONS="$THE_FUNCTIONS after                 "
THE_FUNCTIONS="$THE_FUNCTIONS apply                 "
THE_FUNCTIONS="$THE_FUNCTIONS base64                "
THE_FUNCTIONS="$THE_FUNCTIONS chomp                 "
THE_FUNCTIONS="$THE_FUNCTIONS cond                  "
THE_FUNCTIONS="$THE_FUNCTIONS countrunes            "
THE_FUNCTIONS="$THE_FUNCTIONS countwords            "
THE_FUNCTIONS="$THE_FUNCTIONS dateFormat            "
THE_FUNCTIONS="$THE_FUNCTIONS default               "
THE_FUNCTIONS="$THE_FUNCTIONS delimit               "
THE_FUNCTIONS="$THE_FUNCTIONS dict                  "
THE_FUNCTIONS="$THE_FUNCTIONS echoParam             "
THE_FUNCTIONS="$THE_FUNCTIONS emojify               "
THE_FUNCTIONS="$THE_FUNCTIONS eq                    "
THE_FUNCTIONS="$THE_FUNCTIONS errorf                "
THE_FUNCTIONS="$THE_FUNCTIONS fileExists            "
THE_FUNCTIONS="$THE_FUNCTIONS findRE                "
THE_FUNCTIONS="$THE_FUNCTIONS first                 "
THE_FUNCTIONS="$THE_FUNCTIONS float                 "
THE_FUNCTIONS="$THE_FUNCTIONS ge                    "
THE_FUNCTIONS="$THE_FUNCTIONS getenv                "
THE_FUNCTIONS="$THE_FUNCTIONS gt                    "
THE_FUNCTIONS="$THE_FUNCTIONS hasPrefix             "
THE_FUNCTIONS="$THE_FUNCTIONS highlight             "
THE_FUNCTIONS="$THE_FUNCTIONS htmlEscape            "
THE_FUNCTIONS="$THE_FUNCTIONS htmlUnescape          "
THE_FUNCTIONS="$THE_FUNCTIONS humanize              "
THE_FUNCTIONS="$THE_FUNCTIONS i18n                  "
THE_FUNCTIONS="$THE_FUNCTIONS imageConfig           "
THE_FUNCTIONS="$THE_FUNCTIONS in                    "
THE_FUNCTIONS="$THE_FUNCTIONS int                   "
THE_FUNCTIONS="$THE_FUNCTIONS intersect             "
THE_FUNCTIONS="$THE_FUNCTIONS isset                 "
THE_FUNCTIONS="$THE_FUNCTIONS jsonify               "
THE_FUNCTIONS="$THE_FUNCTIONS lang.NumFmt           "
THE_FUNCTIONS="$THE_FUNCTIONS last                  "
THE_FUNCTIONS="$THE_FUNCTIONS le                    "
THE_FUNCTIONS="$THE_FUNCTIONS lower                 "
THE_FUNCTIONS="$THE_FUNCTIONS lt                    "
THE_FUNCTIONS="$THE_FUNCTIONS markdownify           "
THE_FUNCTIONS="$THE_FUNCTIONS md5                   "
THE_FUNCTIONS="$THE_FUNCTIONS ne                    "
THE_FUNCTIONS="$THE_FUNCTIONS now                   "
THE_FUNCTIONS="$THE_FUNCTIONS partialCached         "
THE_FUNCTIONS="$THE_FUNCTIONS plainify              "
THE_FUNCTIONS="$THE_FUNCTIONS pluralize             "
THE_FUNCTIONS="$THE_FUNCTIONS print                 "
THE_FUNCTIONS="$THE_FUNCTIONS printf                "
THE_FUNCTIONS="$THE_FUNCTIONS println               "
THE_FUNCTIONS="$THE_FUNCTIONS querify               "
THE_FUNCTIONS="$THE_FUNCTIONS range                 "
THE_FUNCTIONS="$THE_FUNCTIONS readDir               "
THE_FUNCTIONS="$THE_FUNCTIONS readFile              "
THE_FUNCTIONS="$THE_FUNCTIONS ref                   "
THE_FUNCTIONS="$THE_FUNCTIONS relLangURL            "
THE_FUNCTIONS="$THE_FUNCTIONS relURL                "
THE_FUNCTIONS="$THE_FUNCTIONS relref                "
THE_FUNCTIONS="$THE_FUNCTIONS render                "
THE_FUNCTIONS="$THE_FUNCTIONS replace               "
THE_FUNCTIONS="$THE_FUNCTIONS replaceRE             "
THE_FUNCTIONS="$THE_FUNCTIONS safeCSS               "
THE_FUNCTIONS="$THE_FUNCTIONS safeHTML              "
THE_FUNCTIONS="$THE_FUNCTIONS safeHTMLAttr          "
THE_FUNCTIONS="$THE_FUNCTIONS safeJS                "
THE_FUNCTIONS="$THE_FUNCTIONS safeURL               "
THE_FUNCTIONS="$THE_FUNCTIONS seq                   "
THE_FUNCTIONS="$THE_FUNCTIONS sha                   "
THE_FUNCTIONS="$THE_FUNCTIONS shuffle               "
THE_FUNCTIONS="$THE_FUNCTIONS singularize           "
THE_FUNCTIONS="$THE_FUNCTIONS slice                 "
THE_FUNCTIONS="$THE_FUNCTIONS slicestr              "
THE_FUNCTIONS="$THE_FUNCTIONS sort                  "
THE_FUNCTIONS="$THE_FUNCTIONS split                 "
THE_FUNCTIONS="$THE_FUNCTIONS string                "
THE_FUNCTIONS="$THE_FUNCTIONS strings.TrimLeft      "
THE_FUNCTIONS="$THE_FUNCTIONS strings.TrimPrefix    "
THE_FUNCTIONS="$THE_FUNCTIONS strings.TrimRight     "
THE_FUNCTIONS="$THE_FUNCTIONS strings.TrimSuffix    "
THE_FUNCTIONS="$THE_FUNCTIONS substr                "
THE_FUNCTIONS="$THE_FUNCTIONS time                  "
THE_FUNCTIONS="$THE_FUNCTIONS title                 "
THE_FUNCTIONS="$THE_FUNCTIONS trim                  "
THE_FUNCTIONS="$THE_FUNCTIONS truncate              "
THE_FUNCTIONS="$THE_FUNCTIONS union                 "
THE_FUNCTIONS="$THE_FUNCTIONS uniq                  "
THE_FUNCTIONS="$THE_FUNCTIONS upper                 "
THE_FUNCTIONS="$THE_FUNCTIONS urlize                "
THE_FUNCTIONS="$THE_FUNCTIONS urls.Parse            "
THE_FUNCTIONS="$THE_FUNCTIONS where                 "
THE_FUNCTIONS="$THE_FUNCTIONS with                  "

for MY_FUNCTION in ${THE_FUNCTIONS}; do
  echo ${MY_FUNCTION}
cat > "${MY_FUNCTION}.md" <<EOF
---
layout: "functions/${MY_FUNCTION}"
---
EOF

MY_LAYOUT_PATH="../../../layouts/examples/functions"
if [ ! -d "${MY_LAYOUT_PATH}" ]; then mkdir -p "${MY_LAYOUT_PATH}"; fi
if [ ! -e "${MY_LAYOUT_PATH}/${MY_FUNCTION}.html" ]; then
cat > "${MY_LAYOUT_PATH}/${MY_FUNCTION}.html" <<EOF
{{/* __HIDE__ */}} {{- define "example" }}<pre>

{{/* ${MY_FUNCTION} */}}

{{/* __HIDE__ */}} </pre>{{ end }}
EOF
fi

done
