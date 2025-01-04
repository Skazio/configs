local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("vue", {
    s({
        trig = "vue",
        desc = "Create a Vue + TS + SCSS file.",
    }, {
        t({
            "<template>",
            "  <div></div>",
            "</template>",
            "",
            '<script lang="ts">',
            'import { defineComponent } from "vue";',
            "",
            "export default defineComponent({",
            '  name: "',
        }),
        i(0),
        t({
            '"',
            "});",
            "</script>",
            "",
            '<style scoped lang="scss"></style>',
        }),
    }),
})
