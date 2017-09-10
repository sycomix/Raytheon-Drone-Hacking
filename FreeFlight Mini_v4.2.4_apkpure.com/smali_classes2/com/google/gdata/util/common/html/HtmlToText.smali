.class public final Lcom/google/gdata/util/common/html/HtmlToText;
.super Ljava/lang/Object;
.source "HtmlToText.java"


# static fields
.field public static final EMAIL_LINE_WIDTH_MAX:I = 0x48

.field private static final htmlListPattern:Ljava/util/regex/Pattern;

.field private static final htmlNewlinePattern:Ljava/util/regex/Pattern;

.field private static final htmlTagPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "\\s*<(br|/?p)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/common/html/HtmlToText;->htmlNewlinePattern:Ljava/util/regex/Pattern;

    .line 35
    const-string v0, "\\s*<li>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/common/html/HtmlToText;->htmlListPattern:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "</?([^<]*)>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/common/html/HtmlToText;->htmlTagPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static htmlToPlainText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 59
    if-nez p0, :cond_0

    .line 60
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Html parameter may not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->stripAndCollapse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "text":Ljava/lang/String;
    sget-object v1, Lcom/google/gdata/util/common/html/HtmlToText;->htmlNewlinePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/google/gdata/util/common/html/HtmlToText;->htmlListPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/google/gdata/util/common/html/HtmlToText;->htmlTagPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/google/gdata/util/common/base/StringUtil;->unescapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x48

    invoke-static {v1, v2}, Lcom/google/gdata/util/common/base/StringUtil;->fixedWidth([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
