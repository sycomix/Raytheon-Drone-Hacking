.class public Lcom/google/gdata/util/common/base/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CJK_BLOCKS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character$UnicodeBlock;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTROL_MATCHER:Lcom/google/gdata/util/common/base/CharMatcher;

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final LINE_BREAKS:Ljava/lang/String; = "\r\n"

.field private static final UNSAFE_TAGS:[Ljava/lang/String;

.field public static final WHITE_SPACES:Ljava/lang/String; = " \r\n\t\u3000\u00a0\u2007\u202f"

.field private static final characterReferencePattern:Ljava/util/regex/Pattern;

.field private static final dbSpecPattern:Ljava/util/regex/Pattern;

.field static escapeStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static hexChars:[C

.field private static final htmlTagPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xfc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 45
    const-class v1, Lcom/google/gdata/util/common/base/StringUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/google/gdata/util/common/base/StringUtil;->$assertionsDisabled:Z

    .line 57
    const-string v1, "</?[a-zA-Z][^>]*>"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/gdata/util/common/base/StringUtil;->htmlTagPattern:Ljava/util/regex/Pattern;

    .line 60
    const-string v1, "&#?[a-zA-Z0-9]{1,8};"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/gdata/util/common/base/StringUtil;->characterReferencePattern:Ljava/util/regex/Pattern;

    .line 63
    const-string v1, "(.*)\\{(\\d+),(\\d+)\\}(.*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/gdata/util/common/base/StringUtil;->dbSpecPattern:Ljava/util/regex/Pattern;

    .line 866
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v7}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    .line 868
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&nbsp;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xa0

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&iexcl;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xa1

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&cent;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xa2

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&pound;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xa3

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&curren;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xa4

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&yen;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xa5

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&brvbar;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xa6

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&sect;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xa7

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&uml;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xa8

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&copy;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xa9

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ordf;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xaa

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&laquo;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xab

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&not;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xac

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&shy;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xad

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&reg;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xae

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&macr;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xaf

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&deg;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xb0

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&plusmn;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xb1

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&sup2;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xb2

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&sup3;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xb3

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&acute;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xb4

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&micro;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xb5

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&para;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xb6

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&middot;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xb7

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&cedil;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xb8

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&sup1;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xb9

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ordm;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xba

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&raquo;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xbb

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&frac14;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xbc

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&frac12;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xbd

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&frac34;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xbe

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&iquest;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xbf

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Agrave;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xc0

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Aacute;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xc1

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Acirc;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xc2

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Atilde;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xc3

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Auml;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xc4

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Aring;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xc5

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&AElig;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xc6

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Ccedil;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xc7

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Egrave;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xc8

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Eacute;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xc9

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Ecirc;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xca

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Euml;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xcb

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Igrave;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xcc

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Iacute;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xcd

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Icirc;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xce

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Iuml;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xcf

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ETH;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xd0

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Ntilde;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xd1

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Ograve;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xd2

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Oacute;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xd3

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Ocirc;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xd4

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Otilde;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xd5

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Ouml;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xd6

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&times;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xd7

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Oslash;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xd8

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Ugrave;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xd9

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Uacute;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xda

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Ucirc;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xdb

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Uuml;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xdc

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Yacute;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xdd

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&THORN;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xde

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&szlig;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xdf

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&agrave;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xe0

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&aacute;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xe1

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&acirc;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xe2

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&atilde;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xe3

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&auml;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xe4

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&aring;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xe5

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&aelig;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xe6

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ccedil;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xe7

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&egrave;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xe8

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&eacute;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xe9

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ecirc;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xea

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&euml;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xeb

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&igrave;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xec

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&iacute;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xed

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&icirc;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xee

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&iuml;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xef

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&eth;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xf0

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ntilde;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xf1

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ograve;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xf2

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&oacute;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xf3

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ocirc;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xf4

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&otilde;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xf5

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ouml;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xf6

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&divide;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xf7

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&oslash;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xf8

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ugrave;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xf9

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&uacute;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xfa

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ucirc;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xfb

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&uuml;"

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, v7}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&yacute;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xfd

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&thorn;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xfe

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&yuml;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0xff

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&fnof;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x192

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Alpha;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x391

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Beta;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x392

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Gamma;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x393

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Delta;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x394

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Epsilon;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x395

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Zeta;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x396

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Eta;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x397

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Theta;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x398

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Iota;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x399

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Kappa;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x39a

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Lambda;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x39b

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Mu;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x39c

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Nu;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x39d

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Xi;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x39e

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Omicron;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x39f

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Pi;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3a0

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Rho;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3a1

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Sigma;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3a3

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Tau;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3a4

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Upsilon;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3a5

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Phi;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3a6

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Chi;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3a7

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Psi;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3a8

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Omega;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3a9

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&alpha;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3b1

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&beta;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3b2

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&gamma;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3b3

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&delta;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3b4

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&epsilon;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3b5

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&zeta;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3b6

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&eta;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3b7

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&theta;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3b8

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&iota;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3b9

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&kappa;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3ba

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&lambda;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3bb

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&mu;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3bc

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&nu;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3bd

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&xi;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3be

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&omicron;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3bf

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&pi;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3c0

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&rho;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3c1

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&sigmaf;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3c2

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&sigma;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3c3

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&tau;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3c4

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&upsilon;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3c5

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&phi;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3c6

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&chi;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3c7

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&psi;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3c8

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&omega;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3c9

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&thetasym;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3d1

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&upsih;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3d2

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&piv;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3d6

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&bull;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2022

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&hellip;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2026

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&prime;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2032

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Prime;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2033

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&oline;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x203e

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&frasl;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2044

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&weierp;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2118

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&image;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2111

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&real;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x211c

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&trade;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2122

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&alefsym;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2135

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&larr;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2190

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&uarr;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2191

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&rarr;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2192

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&darr;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2193

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&harr;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2194

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&crarr;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x21b5

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&lArr;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x21d0

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&uArr;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x21d1

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&rArr;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x21d2

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&dArr;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x21d3

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&hArr;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x21d4

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&forall;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2200

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&part;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2202

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&exist;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2203

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&empty;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2205

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&nabla;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2207

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&isin;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2208

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&notin;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2209

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ni;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x220b

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&prod;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x220f

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&sum;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2211

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&minus;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2212

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&lowast;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2217

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&radic;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x221a

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&prop;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x221d

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&infin;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x221e

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ang;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2220

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&and;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2227

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&or;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2228

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&cap;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2229

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&cup;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x222a

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&int;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x222b

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&there4;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2234

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&sim;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x223c

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&cong;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2245

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&asymp;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2248

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ne;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2260

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&equiv;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2261

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&le;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2264

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ge;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2265

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&sub;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2282

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&sup;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2283

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&nsub;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2284

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&sube;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2286

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&supe;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2287

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&oplus;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2295

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&otimes;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2297

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&perp;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x22a5

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&sdot;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x22c5

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&lceil;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2308

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&rceil;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2309

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&lfloor;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x230a

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&rfloor;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x230b

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&lang;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2329

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&rang;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x232a

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&loz;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x25ca

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&spades;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2660

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&clubs;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2663

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&hearts;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2665

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&diams;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2666

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&quot;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x22

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&amp;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x26

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&lt;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3c

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&gt;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x3e

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&OElig;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x152

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&oelig;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x153

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Scaron;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x160

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&scaron;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x161

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Yuml;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x178

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&circ;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2c6

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&tilde;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2dc

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ensp;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2002

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&emsp;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2003

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&thinsp;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2009

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&zwnj;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x200c

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&zwj;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x200d

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&lrm;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x200e

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&rlm;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x200f

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ndash;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2013

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&mdash;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2014

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&lsquo;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2018

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&rsquo;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2019

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&sbquo;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x201a

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&ldquo;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x201c

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&rdquo;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x201d

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&bdquo;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x201e

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&dagger;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2020

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&Dagger;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2021

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&permil;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2030

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&lsaquo;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x2039

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&rsaquo;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x203a

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    sget-object v1, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string v4, "&euro;"

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x20ac

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "script"

    aput-object v4, v1, v3

    const-string v3, "style"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "object"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "applet"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "!--"

    aput-object v3, v1, v2

    sput-object v1, Lcom/google/gdata/util/common/base/StringUtil;->UNSAFE_TAGS:[Ljava/lang/String;

    .line 1459
    const-string v1, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\u000b\u000c\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\ufffe\uffff"

    invoke-static {v1}, Lcom/google/gdata/util/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v1

    sput-object v1, Lcom/google/gdata/util/common/base/StringUtil;->CONTROL_MATCHER:Lcom/google/gdata/util/common/base/CharMatcher;

    .line 2340
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2341
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character$UnicodeBlock;>;"
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2342
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2343
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KANGXI_RADICALS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2344
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2345
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2346
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2347
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2348
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2349
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KANBUN:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2350
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO_EXTENDED:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2351
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2352
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ENCLOSED_CJK_LETTERS_AND_MONTHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2353
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2354
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2355
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2356
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2357
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2358
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2359
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2360
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2361
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2362
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/google/gdata/util/common/base/StringUtil;->CJK_BLOCKS:Ljava/util/Set;

    .line 2684
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/gdata/util/common/base/StringUtil;->hexChars:[C

    return-void

    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character$UnicodeBlock;>;"
    :cond_0
    move v1, v3

    .line 45
    goto/16 :goto_0

    .line 2684
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Collection2String(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1905
    .local p0, "in":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p0, :cond_0

    .line 1906
    const/4 v0, 0x0

    .line 1908
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/gdata/util/common/base/StringUtil;->Iterator2String(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static Iterator2String(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1918
    .local p0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez p0, :cond_0

    .line 1919
    const/4 v1, 0x0

    .line 1930
    :goto_0
    return-object v1

    .line 1922
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1923
    .local v0, "out":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1924
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1925
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1927
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1930
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static allAscii(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2282
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2283
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2284
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xff80

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 2285
    const/4 v2, 0x0

    .line 2288
    :goto_1
    return v2

    .line 2283
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2288
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static appendHexJavaScriptRepresentation(Ljava/lang/StringBuilder;C)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "c"    # C

    .prologue
    .line 1321
    const-string v2, "\\u"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1323
    .local v1, "val":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "j":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 1324
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1326
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    return-void
.end method

.method public static arrayMap2String(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "keyValueDelim"    # Ljava/lang/String;
    .param p2, "entryDelim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2234
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 2235
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2236
    .local v3, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;>;"
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 2237
    .local v5, "sw":Ljava/io/StringWriter;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2238
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2239
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2240
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 2241
    .local v6, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_2

    .line 2242
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 2243
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_1

    .line 2244
    invoke-virtual {v5, p2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 2241
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2247
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2248
    invoke-virtual {v5, p2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 2251
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "values":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static bytesToEncoding([BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "ba"    # [B
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 2758
    if-nez p0, :cond_0

    .line 2759
    const/4 v1, 0x0

    .line 2763
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2764
    :catch_0
    move-exception v0

    .line 2765
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported! Original exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 2691
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/StringUtil;->bytesToHexString([BLjava/lang/Character;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHexString([BLjava/lang/Character;)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "delimiter"    # Ljava/lang/Character;

    .prologue
    .line 2700
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v5, p0

    if-nez p1, :cond_1

    const/4 v4, 0x2

    :goto_0
    mul-int/2addr v4, v5

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2703
    .local v0, "hex":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_2

    .line 2704
    aget-byte v4, p0, v1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v2, v4, 0xf

    .line 2705
    .local v2, "nibble1":I
    aget-byte v4, p0, v1

    and-int/lit8 v3, v4, 0xf

    .line 2706
    .local v3, "nibble2":I
    if-lez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2707
    :cond_0
    sget-object v4, Lcom/google/gdata/util/common/base/StringUtil;->hexChars:[C

    aget-char v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2708
    sget-object v4, Lcom/google/gdata/util/common/base/StringUtil;->hexChars:[C

    aget-char v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2703
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2700
    .end local v0    # "hex":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    .end local v2    # "nibble1":I
    .end local v3    # "nibble2":I
    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    .line 2710
    .restart local v0    # "hex":Ljava/lang/StringBuffer;
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static bytesToLatin1([B)Ljava/lang/String;
    .locals 1
    .param p0, "ba"    # [B

    .prologue
    .line 2681
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/StringUtil;->bytesToEncoding([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToStringList([B)Ljava/util/List;
    .locals 7
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2800
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2802
    .local v2, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 2831
    :goto_0
    return-object v2

    .line 2806
    :cond_0
    const/4 v3, 0x0

    .line 2809
    .local v3, "r":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .end local v3    # "r":Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2820
    .restart local v3    # "r":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_1

    .line 2821
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2820
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 2813
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "r":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 2815
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 2824
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "r":Ljava/io/BufferedReader;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2826
    .end local v1    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2828
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 2824
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public static bytesToUtf8([B)Ljava/lang/String;
    .locals 1
    .param p0, "ba"    # [B

    .prologue
    .line 2739
    const-string v0, "UTF8"

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/StringUtil;->bytesToEncoding([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2947
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 2951
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 2949
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2950
    .local v1, "first":C
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 2951
    .local v0, "capitalized":C
    if-eq v1, v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static collapse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 2058
    if-nez p0, :cond_0

    .line 2059
    const/4 v4, 0x0

    .line 2084
    :goto_0
    return-object v4

    .line 2062
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2064
    .local v2, "newStr":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2066
    .local v3, "prevCharMatched":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 2067
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2068
    .local v0, "c":C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 2070
    if-eqz v3, :cond_1

    .line 2066
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2075
    :cond_1
    const/4 v3, 0x1

    .line 2076
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2079
    :cond_2
    const/4 v3, 0x0

    .line 2080
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2084
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static collapseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2039
    const-string v0, " \r\n\t\u3000\u00a0\u2007\u202f"

    const-string v1, " "

    invoke-static {p0, v0, v1}, Lcom/google/gdata/util/common/base/StringUtil;->collapse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static containsCharRef(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2296
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->characterReferencePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static convertEOLToCRLF(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 636
    const-string v0, "(\r\n|\r|\n)"

    const-string v1, "\r\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertEOLToLF(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    .line 610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 611
    .local v3, "res":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 612
    .local v4, "s":[C
    const/4 v1, 0x0

    .line 613
    .local v1, "from":I
    array-length v0, v4

    .line 614
    .local v0, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 615
    aget-char v5, v4, v2

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    .line 616
    sub-int v5, v2, v1

    invoke-virtual {v3, v4, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 618
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v0, :cond_0

    add-int/lit8 v5, v2, 0x1

    aget-char v5, v4, v5

    if-ne v5, v7, :cond_0

    .line 619
    add-int/lit8 v2, v2, 0x1

    .line 622
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .line 614
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 626
    :cond_2
    if-nez v1, :cond_3

    .line 631
    .end local p0    # "input":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 630
    .restart local p0    # "input":Ljava/lang/String;
    :cond_3
    sub-int v5, v0, v1

    invoke-virtual {v3, v4, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static copyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2659
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2660
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 2662
    :cond_1
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 2664
    .local v0, "buffer":[B
    :goto_0
    const/4 v2, -0x1

    array-length v3, v0

    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "len":I
    if-eq v2, v1, :cond_2

    .line 2665
    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 2667
    :cond_2
    return-void
.end method

.method public static cropBetween(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "limit"    # C

    .prologue
    .line 1746
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/StringUtil;->cropBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cropBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "limit"    # Ljava/lang/String;

    .prologue
    .line 1760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1761
    .local v3, "out":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1762
    .local v0, "lastPos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1763
    .local v1, "lenLimit":I
    const/4 v2, 0x1

    .line 1764
    .local v2, "modeAdd":Z
    const/4 v4, -0x1

    .line 1765
    .local v4, "pos":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 1766
    if-eqz v2, :cond_0

    .line 1767
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    :cond_0
    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 1770
    :goto_1
    add-int v0, v4, v1

    goto :goto_0

    .line 1769
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1774
    :cond_2
    if-eqz v2, :cond_3

    .line 1775
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static displayWidth(C)I
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 2456
    const/16 v0, 0x4f9

    if-le p0, v0, :cond_4

    const/16 v0, 0x5be

    if-eq p0, v0, :cond_4

    const/16 v0, 0x5d0

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5ea

    if-le p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x5f3

    if-eq p0, v0, :cond_4

    const/16 v0, 0x5f4

    if-eq p0, v0, :cond_4

    const/16 v0, 0xe00

    if-lt p0, v0, :cond_1

    const/16 v0, 0xe7f

    if-le p0, v0, :cond_4

    :cond_1
    const/16 v0, 0x1e00

    if-lt p0, v0, :cond_2

    const/16 v0, 0x20af

    if-le p0, v0, :cond_4

    :cond_2
    const/16 v0, 0x2100

    if-lt p0, v0, :cond_3

    const/16 v0, 0x213a

    if-le p0, v0, :cond_4

    :cond_3
    const v0, 0xff61

    if-lt p0, v0, :cond_5

    const v0, 0xffdc

    if-gt p0, v0, :cond_5

    .line 2465
    :cond_4
    const/4 v0, 0x1

    .line 2467
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static displayWidth(Ljava/lang/String;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2426
    const/4 v2, 0x0

    .line 2427
    .local v2, "width":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2428
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2429
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/gdata/util/common/base/StringUtil;->displayWidth(C)I

    move-result v3

    add-int/2addr v2, v3

    .line 2428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2431
    :cond_0
    return v2
.end method

.method public static encodingToBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 2777
    if-nez p0, :cond_0

    .line 2778
    const/4 v1, 0x0

    .line 2782
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2783
    :catch_0
    move-exception v0

    .line 2784
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported! Original exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 2259
    if-ne p0, p1, :cond_0

    .line 2260
    const/4 v0, 0x1

    .line 2267
    :goto_0
    return v0

    .line 2262
    :cond_0
    if-eqz p0, :cond_1

    .line 2263
    if-eqz p1, :cond_1

    .line 2264
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2267
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static expandShardNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "dbSpecComponent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2864
    sget-object v8, Lcom/google/gdata/util/common/base/StringUtil;->dbSpecPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2865
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2867
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->end(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2869
    .local v4, "prefix":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->end(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2873
    .local v2, "minShard":I
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->end(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2877
    .local v1, "maxShard":I
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->end(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2880
    .local v6, "suffix":Ljava/lang/String;
    if-le v2, v1, :cond_0

    .line 2881
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Maximum shard must be greater than or equal to the minimum shard"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2893
    .end local v1    # "maxShard":I
    .end local v2    # "minShard":I
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v6    # "suffix":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2894
    .local v3, "nfex":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Malformed DB specification component: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2885
    .end local v3    # "nfex":Ljava/lang/NumberFormatException;
    .restart local v1    # "maxShard":I
    .restart local v2    # "minShard":I
    .restart local v4    # "prefix":Ljava/lang/String;
    .restart local v6    # "suffix":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2886
    .local v7, "tmp":Ljava/lang/StringBuilder;
    move v5, v2

    .local v5, "shard":I
    :goto_0
    if-gt v5, v1, :cond_2

    .line 2887
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2888
    if-eq v5, v1, :cond_1

    .line 2889
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2886
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2892
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    .line 2898
    .end local v1    # "maxShard":I
    .end local v2    # "minShard":I
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "shard":I
    .end local v6    # "suffix":Ljava/lang/String;
    .end local v7    # "tmp":Ljava/lang/StringBuilder;
    .end local p0    # "dbSpecComponent":Ljava/lang/String;
    :cond_3
    return-object p0
.end method

.method public static fixedWidth(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "width"    # I

    .prologue
    .line 222
    const-string v1, "\n"

    invoke-static {p0, v1}, Lcom/google/gdata/util/common/base/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "lines":[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/gdata/util/common/base/StringUtil;->fixedWidth([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fixedWidth([Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "lines"    # [Ljava/lang/String;
    .param p1, "width"    # I

    .prologue
    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .local v1, "formatStr":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_6

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "curWidth":I
    if-eqz v2, :cond_0

    .line 239
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    aget-object v5, p0, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, p1, :cond_2

    .line 243
    aget-object v5, p0, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_2
    aget-object v5, p0, v2

    const-string v6, " \r\n\t\u3000\u00a0\u2007\u202f"

    invoke-static {v5, v6}, Lcom/google/gdata/util/common/base/StringUtil;->splitAndTrim(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "words":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 248
    if-eqz v0, :cond_3

    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    if-ge v5, p1, :cond_5

    .line 250
    :cond_3
    if-eqz v0, :cond_4

    .line 251
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v0, v0, 0x1

    .line 254
    :cond_4
    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    .line 255
    aget-object v5, v4, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 257
    :cond_5
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 259
    aget-object v5, v4, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 264
    .end local v0    # "curWidth":I
    .end local v3    # "j":I
    .end local v4    # "words":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 585
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 586
    .local v0, "bytes":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 603
    :cond_0
    return-object v0

    .line 589
    :cond_1
    aput-byte v5, v0, v5

    .line 590
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v3, v4, 0x2

    .line 591
    .local v3, "nibbleIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 592
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 593
    .local v1, "c":C
    invoke-static {v1}, Lcom/google/gdata/util/common/base/StringUtil;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 594
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "string contains non-hex chars"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 596
    :cond_2
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_3

    .line 597
    shr-int/lit8 v4, v3, 0x1

    invoke-static {v1}, Lcom/google/gdata/util/common/base/StringUtil;->hexValue(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 601
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 591
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 599
    :cond_3
    shr-int/lit8 v4, v3, 0x1

    aget-byte v5, v0, v4

    invoke-static {v1}, Lcom/google/gdata/util/common/base/StringUtil;->hexValue(C)I

    move-result v6

    int-to-byte v6, v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    goto :goto_1
.end method

.method private static hexValue(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 722
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 723
    add-int/lit8 v0, p0, -0x30

    .line 727
    :goto_0
    return v0

    .line 724
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 725
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 727
    :cond_1
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public static htmlEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1607
    const/4 v2, 0x0

    .line 1609
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 1610
    .local v3, "start":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1611
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1625
    const/4 v1, 0x0

    .line 1628
    .local v1, "replacement":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_2

    .line 1629
    if-nez v2, :cond_0

    .line 1634
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1636
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    if-le v0, v3, :cond_1

    .line 1638
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    add-int/lit8 v3, v0, 0x1

    .line 1610
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1613
    .end local v1    # "replacement":Ljava/lang/String;
    :sswitch_0
    const-string v1, "&quot;"

    .line 1614
    .restart local v1    # "replacement":Ljava/lang/String;
    goto :goto_1

    .line 1616
    .end local v1    # "replacement":Ljava/lang/String;
    :sswitch_1
    const-string v1, "&amp;"

    .line 1617
    .restart local v1    # "replacement":Ljava/lang/String;
    goto :goto_1

    .line 1619
    .end local v1    # "replacement":Ljava/lang/String;
    :sswitch_2
    const-string v1, "&lt;"

    .line 1620
    .restart local v1    # "replacement":Ljava/lang/String;
    goto :goto_1

    .line 1622
    .end local v1    # "replacement":Ljava/lang/String;
    :sswitch_3
    const-string v1, "&gt;"

    .line 1623
    .restart local v1    # "replacement":Ljava/lang/String;
    goto :goto_1

    .line 1645
    .end local v1    # "replacement":Ljava/lang/String;
    :cond_3
    if-lez v3, :cond_4

    .line 1646
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    :cond_4
    if-eqz v2, :cond_5

    .line 1650
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1652
    .end local p0    # "s":Ljava/lang/String;
    :cond_5
    return-object p0

    .line 1611
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x26 -> :sswitch_1
        0x3c -> :sswitch_2
        0x3e -> :sswitch_3
    .end sparse-switch
.end method

.method public static indent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "iString"    # Ljava/lang/String;
    .param p1, "iIndentDepth"    # I

    .prologue
    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v1, "spacer":Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 304
    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    const-string v2, "\n"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/google/gdata/util/common/base/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static indexOfChars(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;

    .prologue
    .line 470
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/gdata/util/common/base/StringUtil;->indexOfChars(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static indexOfChars(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    .line 454
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 456
    .local v0, "len":I
    move v1, p2

    .local v1, "pos":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 457
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 462
    .end local v1    # "pos":I
    :goto_1
    return v1

    .line 456
    .restart local v1    # "pos":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static insertBreakingWhitespace(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "lineLen"    # I
    .param p1, "original"    # Ljava/lang/String;

    .prologue
    .line 277
    if-eqz p1, :cond_0

    if-gtz p0, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 279
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 280
    .local v1, "length":I
    if-gt v1, p0, :cond_2

    .line 291
    .end local p1    # "original":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 283
    .restart local p1    # "original":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 284
    .local v0, "currPos":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v2, "retval":Ljava/lang/StringBuilder;
    :goto_1
    sub-int v3, v1, v0

    if-le v3, p0, :cond_3

    .line 286
    add-int v3, v0, p0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    add-int/2addr v0, p0

    .line 288
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 290
    :cond_3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static isCjk(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 2374
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->isCjk(I)Z

    move-result v0

    return v0
.end method

.method public static isCjk(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    .prologue
    .line 2383
    and-int/lit16 v0, p0, -0x100

    if-nez v0, :cond_0

    .line 2384
    const/4 v0, 0x0

    .line 2387
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->CJK_BLOCKS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isCjk(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2326
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2327
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2328
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/gdata/util/common/base/StringUtil;->isCjk(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2329
    const/4 v2, 0x1

    .line 2332
    :goto_1
    return v2

    .line 2327
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2332
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2171
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->makeSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmptyOrWhitespace(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2181
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->makeSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2182
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2183
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2184
    const/4 v2, 0x0

    .line 2187
    :goto_1
    return v2

    .line 2182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2187
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isHebrew(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    .prologue
    .line 2317
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HEBREW:Ljava/lang/Character$UnicodeBlock;

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHebrew(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2304
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2305
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2306
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/gdata/util/common/base/StringUtil;->isHebrew(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2307
    const/4 v2, 0x1

    .line 2310
    :goto_1
    return v2

    .line 2305
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2310
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static isHex(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 716
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOctal(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 712
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static javaEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1505
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1506
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1507
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1517
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1505
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1508
    :sswitch_0
    const-string v3, "\\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1509
    :sswitch_1
    const-string v3, "\\r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1510
    :sswitch_2
    const-string v3, "\\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1511
    :sswitch_3
    const-string v3, "\\\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1512
    :sswitch_4
    const-string v3, "\\\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1513
    :sswitch_5
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1514
    :sswitch_6
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1515
    :sswitch_7
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1516
    :sswitch_8
    const-string v3, "\\\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1520
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1507
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_4
        0x26 -> :sswitch_5
        0x27 -> :sswitch_8
        0x3c -> :sswitch_6
        0x3e -> :sswitch_7
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method public static javaEscapeWithinAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1533
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1534
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1535
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1545
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1533
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1536
    :sswitch_0
    const-string v3, "\\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1537
    :sswitch_1
    const-string v3, "\\r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1538
    :sswitch_2
    const-string v3, "\\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1539
    :sswitch_3
    const-string v3, "\\\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1540
    :sswitch_4
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1541
    :sswitch_5
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1542
    :sswitch_6
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1543
    :sswitch_7
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1544
    :sswitch_8
    const-string v3, "\\\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1548
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1535
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_4
        0x26 -> :sswitch_5
        0x27 -> :sswitch_8
        0x3c -> :sswitch_6
        0x3e -> :sswitch_7
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method public static javaScriptEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1233
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/StringUtil;->javaScriptEscapeHelper(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static javaScriptEscapeHelper(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "escapeToAscii"    # Z

    .prologue
    .line 1260
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x8

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1261
    .local v12, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v8, v0, :cond_5

    .line 1262
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1263
    .local v7, "c":C
    sparse-switch v7, :sswitch_data_0

    .line 1300
    const/16 v0, 0x80

    if-lt v7, v0, :cond_4

    if-eqz p1, :cond_4

    .line 1301
    invoke-static {v12, v7}, Lcom/google/gdata/util/common/base/StringUtil;->appendHexJavaScriptRepresentation(Ljava/lang/StringBuilder;C)V

    .line 1261
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1264
    :sswitch_0
    const-string v0, "\\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1265
    :sswitch_1
    const-string v0, "\\r"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1266
    :sswitch_2
    const-string v0, "\\t"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1267
    :sswitch_3
    const-string v0, "\\\\"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1268
    :sswitch_4
    const-string v0, "\\\""

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1269
    :sswitch_5
    const-string v0, "\\\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1272
    :sswitch_6
    invoke-static {v12, v7}, Lcom/google/gdata/util/common/base/StringUtil;->appendHexJavaScriptRepresentation(Ljava/lang/StringBuilder;C)V

    goto :goto_1

    .line 1276
    :sswitch_7
    const/4 v10, 0x0

    .line 1277
    .local v10, "isUnsafe":Z
    sget-object v6, Lcom/google/gdata/util/common/base/StringUtil;->UNSAFE_TAGS:[Ljava/lang/String;

    .local v6, "arr$":[Ljava/lang/String;
    array-length v11, v6

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v11, :cond_0

    aget-object v3, v6, v9

    .line 1278
    .local v3, "tag":Ljava/lang/String;
    const/4 v1, 0x1

    add-int/lit8 v2, v8, 0x1

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1279
    const/4 v10, 0x1

    .line 1283
    .end local v3    # "tag":Ljava/lang/String;
    :cond_0
    if-eqz v10, :cond_2

    .line 1284
    invoke-static {v12, v7}, Lcom/google/gdata/util/common/base/StringUtil;->appendHexJavaScriptRepresentation(Ljava/lang/StringBuilder;C)V

    goto :goto_1

    .line 1277
    .restart local v3    # "tag":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1286
    .end local v3    # "tag":Ljava/lang/String;
    :cond_2
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1290
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "isUnsafe":Z
    .end local v11    # "len$":I
    :sswitch_8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    .line 1291
    const/16 v0, 0x5c

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1293
    :cond_3
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1297
    :sswitch_9
    const-string v0, "\\u2028"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1298
    :sswitch_a
    const-string v0, "\\u2029"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1303
    :cond_4
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1307
    .end local v7    # "c":C
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1263
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_4
        0x27 -> :sswitch_5
        0x2f -> :sswitch_7
        0x3c -> :sswitch_7
        0x3d -> :sswitch_6
        0x3e -> :sswitch_8
        0x5c -> :sswitch_3
        0x2028 -> :sswitch_9
        0x2029 -> :sswitch_a
    .end sparse-switch
.end method

.method public static javaScriptEscapeToAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1243
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/StringUtil;->javaScriptEscapeHelper(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaScriptUnescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1337
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1338
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1339
    .local v0, "c":C
    const/16 v3, 0x5c

    if-ne v0, v3, :cond_0

    .line 1340
    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v3, v2}, Lcom/google/gdata/util/common/base/StringUtil;->javaScriptUnescapeHelper(Ljava/lang/String;ILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_0

    .line 1342
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1346
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static javaScriptUnescapeHelper(Ljava/lang/String;ILjava/lang/StringBuilder;)I
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "i"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1359
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt p1, v6, :cond_0

    .line 1360
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End-of-string after escape character in ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1364
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1365
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1396
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown escape code ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] at index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1366
    :sswitch_0
    const/16 v6, 0xa

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v2

    .line 1400
    .end local v2    # "i":I
    .restart local p1    # "i":I
    :goto_0
    return p1

    .line 1367
    .end local p1    # "i":I
    .restart local v2    # "i":I
    :sswitch_1
    const/16 v6, 0xd

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v2

    .end local v2    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    .line 1368
    .end local p1    # "i":I
    .restart local v2    # "i":I
    :sswitch_2
    const/16 v6, 0x9

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v2

    .end local v2    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    .line 1373
    .end local p1    # "i":I
    .restart local v2    # "i":I
    :sswitch_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v2

    .line 1374
    .end local v2    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    .line 1378
    .end local p1    # "i":I
    .restart local v2    # "i":I
    :sswitch_4
    add-int/lit8 v6, v2, 0x4

    :try_start_0
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1386
    .local v1, "hexCode":Ljava/lang/String;
    const/16 v6, 0x10

    :try_start_1
    invoke-static {v1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 1392
    .local v5, "unicodeValue":I
    int-to-char v6, v5

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1393
    add-int/lit8 p1, v2, 0x4

    .line 1394
    .end local v2    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    .line 1379
    .end local v1    # "hexCode":Ljava/lang/String;
    .end local v5    # "unicodeValue":I
    .end local p1    # "i":I
    .restart local v2    # "i":I
    :catch_0
    move-exception v3

    .line 1380
    .local v3, "ioobe":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid unicode sequence ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] at index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1387
    .end local v3    # "ioobe":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "hexCode":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 1388
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid unicode sequence ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] at index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1365
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_3
        0x3e -> :sswitch_3
        0x5c -> :sswitch_3
        0x6e -> :sswitch_0
        0x72 -> :sswitch_1
        0x74 -> :sswitch_2
        0x75 -> :sswitch_4
    .end sparse-switch
.end method

.method public static javaUtilRegexEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1688
    const-string v2, "\\E"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1699
    :goto_0
    return-object v2

    .line 1693
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1694
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1695
    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1696
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1694
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1699
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "tokens"    # Ljava/util/Collection;
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 194
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/gdata/util/common/base/StringUtil;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "tokens"    # [Ljava/lang/Object;
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    const-string v2, ""

    .line 182
    :goto_0
    return-object v2

    .line 173
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 176
    if-lez v0, :cond_2

    if-eqz p1, :cond_2

    .line 177
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_2
    aget-object v2, p0, v0

    if-eqz v2, :cond_3

    .line 180
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static joinInts([ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "tokens"    # [I
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 130
    if-nez p0, :cond_0

    const-string v2, ""

    .line 139
    :goto_0
    return-object v2

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 134
    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_1
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static joinLongs([JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "tokens"    # [J
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 147
    if-nez p0, :cond_0

    const-string v2, ""

    .line 156
    :goto_0
    return-object v2

    .line 148
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 151
    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_1
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static lastIndexNotOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    .line 480
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 482
    move v0, p2

    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_1

    .line 483
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 488
    .end local v0    # "pos":I
    :goto_1
    return v0

    .line 482
    .restart local v0    # "pos":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 488
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static lastToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 2274
    invoke-static {p0, p1}, Lcom/google/gdata/util/common/base/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2275
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public static latin1ToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2729
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/StringUtil;->encodingToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static list2String(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1888
    .local p0, "in":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/google/gdata/util/common/base/StringUtil;->Collection2String(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lowercaseKeys(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .prologue
    .line 2017
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 2018
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2019
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2020
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2021
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Duplicate string key in map when lower casing"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2024
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2026
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static lstrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 358
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->LEGACY_WHITESPACE:Lcom/google/gdata/util/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/gdata/util/common/base/CharMatcher;->trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static makeSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2196
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static map2String(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sepKey"    # Ljava/lang/String;
    .param p2, "sepEntry"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1991
    .local p0, "in":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez p0, :cond_0

    .line 1992
    const/4 v3, 0x0

    .line 2005
    :goto_0
    return-object v3

    .line 1995
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1996
    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1997
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1998
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1999
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2001
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2002
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2005
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static maskLeft(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "len"    # I
    .param p2, "mask_ch"    # C

    .prologue
    .line 682
    if-gtz p1, :cond_0

    .line 691
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 685
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 688
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 690
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static maskRight(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "len"    # I
    .param p2, "mask_ch"    # C

    .prologue
    .line 699
    if-gtz p1, :cond_0

    .line 708
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 702
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 706
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 705
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 708
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static megastrip(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "left"    # Z
    .param p2, "right"    # Z
    .param p3, "what"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 331
    if-nez p0, :cond_0

    .line 332
    const/4 v2, 0x0

    .line 346
    :goto_0
    return-object v2

    .line 335
    :cond_0
    const/4 v0, 0x0

    .line 336
    .local v0, "limitLeft":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 338
    .local v1, "limitRight":I
    :goto_1
    if-eqz p1, :cond_1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 342
    :cond_1
    :goto_2
    if-eqz p2, :cond_2

    if-lt v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 344
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 346
    :cond_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static numSharedChars(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;

    .prologue
    .line 437
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 438
    :cond_0
    const/4 v1, 0x0

    .line 446
    :cond_1
    return v1

    .line 441
    :cond_2
    const/4 v1, 0x0

    .local v1, "total":I
    const/4 v0, -0x1

    .line 442
    .local v0, "pos":I
    :goto_0
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, p1, v2}, Lcom/google/gdata/util/common/base/StringUtil;->indexOfChars(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static padLeft(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "len"    # I
    .param p2, "pad_ch"    # C

    .prologue
    .line 645
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, p1, :cond_0

    .line 654
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 648
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, p1, v3

    .line 650
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 651
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 653
    :cond_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static padRight(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "len"    # I
    .param p2, "pad_ch"    # C

    .prologue
    .line 664
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, p1, :cond_0

    .line 673
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 667
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, p1, v3

    .line 669
    .local v1, "n":I
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 671
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 673
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static parseDelimitedList(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 8
    .param p0, "list"    # Ljava/lang/String;
    .param p1, "delimiter"    # C

    .prologue
    .line 2126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2129
    .local v0, "delim":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v2, v6, v0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2132
    .local v2, "st":Ljava/util/StringTokenizer;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2133
    .local v4, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, ""

    .line 2134
    .local v1, "lastToken":Ljava/lang/String;
    const-string v5, ""

    .line 2148
    .local v5, "word":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2149
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 2150
    .local v3, "tok":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2151
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2153
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    .line 2159
    :cond_0
    :goto_1
    move-object v1, v3

    .line 2160
    goto :goto_0

    .line 2155
    :cond_1
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2156
    :cond_2
    const-string v5, ""

    goto :goto_1

    .line 2162
    .end local v3    # "tok":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method public static pythonEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1212
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1213
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1214
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1221
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1212
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1215
    :sswitch_0
    const-string v3, "\\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1216
    :sswitch_1
    const-string v3, "\\r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1217
    :sswitch_2
    const-string v3, "\\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1218
    :sswitch_3
    const-string v3, "\\\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1219
    :sswitch_4
    const-string v3, "\\\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1220
    :sswitch_5
    const-string v3, "\\\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1224
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1214
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_4
        0x27 -> :sswitch_5
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method public static regexEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1663
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1664
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1666
    .local v0, "c":C
    const-string v3, "()|*+?.{}[]$^\\"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1667
    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1668
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1663
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1671
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1675
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static regexReplacementEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1714
    const/4 v3, 0x0

    .line 1716
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1717
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1719
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1730
    :goto_1
    if-eqz v3, :cond_0

    .line 1731
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1716
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1722
    :sswitch_0
    if-nez v3, :cond_1

    .line 1726
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1728
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1737
    .end local v0    # "c":C
    :cond_2
    if-nez v3, :cond_3

    .end local p0    # "s":Ljava/lang/String;
    :goto_2
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 1719
    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static removeChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "oldchars"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 516
    invoke-static {p0, p1}, Lcom/google/gdata/util/common/base/StringUtil;->indexOfChars(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 517
    .local v1, "pos":I
    if-ne v1, v4, :cond_0

    .line 532
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 521
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 524
    .local v2, "start":I
    :cond_1
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    add-int/lit8 v2, v1, 0x1

    .line 526
    invoke-static {p0, p1, v2}, Lcom/google/gdata/util/common/base/StringUtil;->indexOfChars(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 527
    if-ne v1, v4, :cond_1

    .line 529
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 530
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "sourceString"    # Ljava/lang/String;
    .param p1, "factor"    # I

    .prologue
    const/4 v1, 0x1

    .line 2909
    if-ge p1, v1, :cond_1

    .line 2910
    const-string p0, ""

    .line 2923
    .end local p0    # "sourceString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 2912
    .restart local p0    # "sourceString":Ljava/lang/String;
    :cond_1
    if-eq p1, v1, :cond_0

    .line 2916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2918
    .local v0, "sb":Ljava/lang/StringBuilder;
    :goto_1
    if-lez p1, :cond_2

    .line 2919
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2920
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 2923
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "with"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    sget-boolean v0, Lcom/google/gdata/util/common/base/StringUtil;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 211
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "oldchars"    # Ljava/lang/String;
    .param p2, "newchar"    # C

    .prologue
    const/4 v3, -0x1

    .line 497
    invoke-static {p0, p1}, Lcom/google/gdata/util/common/base/StringUtil;->indexOfChars(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 498
    .local v1, "pos":I
    if-ne v1, v3, :cond_0

    .line 508
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 502
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    .local v0, "buf":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v0, v1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 505
    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, v2}, Lcom/google/gdata/util/common/base/StringUtil;->indexOfChars(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 506
    if-ne v1, v3, :cond_1

    .line 508
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static replaceSmartQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 558
    const-string/jumbo v0, "\u0091\u0092\u2018\u2019"

    const/16 v1, 0x27

    invoke-static {p0, v0, v1}, Lcom/google/gdata/util/common/base/StringUtil;->replaceChars(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    .line 559
    const-string/jumbo v0, "\u0093\u0094\u201c\u201d"

    const/16 v1, 0x22

    invoke-static {p0, v0, v1}, Lcom/google/gdata/util/common/base/StringUtil;->replaceChars(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    .line 560
    return-object p0
.end method

.method public static retainAllChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "retainChars"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 540
    invoke-static {p0, p1}, Lcom/google/gdata/util/common/base/StringUtil;->indexOfChars(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 541
    .local v1, "pos":I
    if-ne v1, v3, :cond_0

    .line 542
    const-string v2, ""

    .line 549
    :goto_0
    return-object v2

    .line 544
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .local v0, "buf":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 547
    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, v2}, Lcom/google/gdata/util/common/base/StringUtil;->indexOfChars(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 548
    if-ne v1, v3, :cond_1

    .line 549
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static rstrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 370
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->LEGACY_WHITESPACE:Lcom/google/gdata/util/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/gdata/util/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delims"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/gdata/util/common/base/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delims"    # Ljava/lang/String;
    .param p2, "trimTokens"    # Z

    .prologue
    .line 81
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 83
    .local v2, "n":I
    new-array v1, v2, [Ljava/lang/String;

    .line 84
    .local v1, "list":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 85
    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 84
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    goto :goto_1

    .line 91
    :cond_1
    return-object v1
.end method

.method public static splitAndTrim(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delims"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/gdata/util/common/base/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitInts(Ljava/lang/String;)[I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 105
    .local v2, "n":I
    new-array v1, v2, [I

    .line 106
    .local v1, "list":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 107
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "token":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v3    # "token":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static splitLongs(Ljava/lang/String;)[J
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 117
    .local v2, "n":I
    new-array v1, v2, [J

    .line 118
    .local v1, "list":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 119
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "token":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v1, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v3    # "token":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static stream2String(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2098
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 2099
    .local v0, "buffer":[B
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 2100
    .local v2, "sw":Ljava/io/StringWriter;
    const/4 v3, 0x0

    .line 2101
    .local v3, "totalRead":I
    const/4 v1, 0x0

    .line 2104
    .local v1, "read":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v6, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 2105
    add-int/2addr v3, v1

    .line 2106
    array-length v4, v0

    invoke-virtual {p0, v0, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 2107
    if-eq v5, p1, :cond_1

    if-ge v3, p1, :cond_2

    :cond_1
    if-ne v1, v5, :cond_0

    .line 2109
    :cond_2
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static string2Collection(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "doStrip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1841
    .local p3, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 1842
    const/4 v3, 0x0

    .line 1874
    :goto_0
    return-object v3

    .line 1844
    :cond_0
    if-nez p3, :cond_1

    .line 1845
    new-instance p3, Ljava/util/ArrayList;

    .end local p3    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1847
    .restart local p3    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 1848
    :cond_2
    invoke-interface {p3, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v3, p3

    .line 1849
    goto :goto_0

    .line 1852
    :cond_3
    const/4 v0, 0x0

    .line 1854
    .local v0, "fromIndex":I
    :goto_1
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .local v2, "pos":I
    if-ltz v2, :cond_7

    .line 1855
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1856
    .local v1, "interim":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 1857
    invoke-static {v1}, Lcom/google/gdata/util/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1859
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1860
    :cond_5
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1863
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1864
    goto :goto_1

    .line 1866
    .end local v1    # "interim":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1867
    .restart local v1    # "interim":Ljava/lang/String;
    if-eqz p2, :cond_8

    .line 1868
    invoke-static {v1}, Lcom/google/gdata/util/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1870
    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 1871
    :cond_9
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object v3, p3

    .line 1874
    goto :goto_0
.end method

.method public static string2List(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedList;
    .locals 1
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "doStrip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1793
    if-nez p0, :cond_0

    .line 1794
    const/4 v0, 0x0

    .line 1799
    :goto_0
    return-object v0

    .line 1797
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1798
    .local v0, "out":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, v0}, Lcom/google/gdata/util/common/base/StringUtil;->string2Collection(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;

    goto :goto_0
.end method

.method public static string2Map(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 9
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "delimEntry"    # Ljava/lang/String;
    .param p2, "delimKey"    # Ljava/lang/String;
    .param p3, "doStripEntry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1949
    if-nez p0, :cond_1

    .line 1950
    const/4 v3, 0x0

    .line 1976
    :cond_0
    :goto_0
    return-object v3

    .line 1953
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1955
    .local v3, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/gdata/util/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p2}, Lcom/google/gdata/util/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1956
    :cond_2
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1960
    :cond_3
    invoke-static {p0, p1, v8}, Lcom/google/gdata/util/common/base/StringUtil;->string2List(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1961
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1962
    .local v2, "len":I
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1963
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1964
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1965
    .local v4, "pos":I
    if-lez v4, :cond_5

    .line 1966
    add-int v6, v4, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1967
    .local v5, "value":Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 1968
    invoke-static {v5}, Lcom/google/gdata/util/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1970
    :cond_4
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/gdata/util/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1972
    .end local v5    # "value":Ljava/lang/String;
    :cond_5
    invoke-static {v0}, Lcom/google/gdata/util/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static string2Set(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Set;
    .locals 1
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "doStrip"    # Z

    .prologue
    .line 1813
    if-nez p0, :cond_0

    .line 1814
    const/4 v0, 0x0

    .line 1819
    :goto_0
    return-object v0

    .line 1817
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1818
    .local v0, "out":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, v0}, Lcom/google/gdata/util/common/base/StringUtil;->string2Collection(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;

    goto :goto_0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 378
    const-string v0, " \r\n\t\u3000\u00a0\u2007\u202f"

    invoke-static {p0, v1, v1, v0}, Lcom/google/gdata/util/common/base/StringUtil;->megastrip(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAndCollapse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 387
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/util/common/base/StringUtil;->collapseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripHtmlTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1200
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1203
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->htmlTagPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripNonDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 422
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 423
    .local v4, "result":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-char v1, v0, v2

    .line 424
    .local v1, "candidate":C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 425
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 423
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    .end local v1    # "candidate":C
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static stripPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stripPrefixIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2205
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static toNullIfEmptyOrWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2215
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2557
    if-nez p0, :cond_0

    .line 2558
    const-string v0, "NULL"

    .line 2560
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString([F)Ljava/lang/String;
    .locals 3
    .param p0, "iArray"    # [F

    .prologue
    .line 2474
    if-nez p0, :cond_0

    .line 2475
    const-string v2, "NULL"

    .line 2487
    :goto_0
    return-object v2

    .line 2478
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2479
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2480
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2481
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2482
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2483
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2480
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2486
    :cond_2
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2487
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 3
    .param p0, "iArray"    # [I

    .prologue
    .line 2514
    if-nez p0, :cond_0

    .line 2515
    const-string v2, "NULL"

    .line 2527
    :goto_0
    return-object v2

    .line 2518
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2519
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2520
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2521
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2522
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2523
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2520
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2526
    :cond_2
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([J)Ljava/lang/String;
    .locals 4
    .param p0, "iArray"    # [J

    .prologue
    .line 2494
    if-nez p0, :cond_0

    .line 2495
    const-string v2, "NULL"

    .line 2507
    :goto_0
    return-object v2

    .line 2498
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2499
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2500
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2501
    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2502
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2503
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2500
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2506
    :cond_2
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2507
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 2624
    if-nez p0, :cond_0

    const-string v2, "NULL"

    .line 2634
    :goto_0
    return-object v2

    .line 2625
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2626
    .local v1, "tmp":Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2627
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2628
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2629
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2630
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2627
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2633
    :cond_2
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2634
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "iArray"    # [Ljava/lang/String;

    .prologue
    .line 2534
    if-nez p0, :cond_0

    const-string v2, "NULL"

    .line 2546
    :goto_0
    return-object v2

    .line 2536
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2537
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2538
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2539
    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2540
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2541
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2538
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2544
    :cond_2
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2546
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([[I)Ljava/lang/String;
    .locals 4
    .param p0, "iArray"    # [[I

    .prologue
    .line 2570
    if-nez p0, :cond_0

    .line 2571
    const-string v3, "NULL"

    .line 2590
    :goto_0
    return-object v3

    .line 2574
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2575
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2576
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 2577
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2578
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 2579
    aget-object v3, p0, v1

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2580
    aget-object v3, p0, v1

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2581
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2578
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2584
    :cond_2
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2585
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_3

    .line 2586
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2576
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2589
    .end local v2    # "j":I
    :cond_4
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2590
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static toString([[J)Ljava/lang/String;
    .locals 6
    .param p0, "iArray"    # [[J

    .prologue
    .line 2597
    if-nez p0, :cond_0

    const-string v3, "NULL"

    .line 2615
    :goto_0
    return-object v3

    .line 2599
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2600
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 2602
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2603
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 2604
    aget-object v3, p0, v1

    aget-wide v4, v3, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2605
    aget-object v3, p0, v1

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2606
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2603
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2609
    :cond_2
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_3

    .line 2611
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2614
    .end local v2    # "j":I
    :cond_4
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2615
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static toUTF8InputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2644
    const/4 v1, 0x0

    .line 2646
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .end local v1    # "is":Ljava/io/InputStream;
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2651
    .restart local v1    # "is":Ljava/io/InputStream;
    return-object v1

    .line 2647
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 2649
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 2840
    if-nez p0, :cond_0

    .line 2841
    const/4 v0, 0x0

    .line 2843
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unescapeCString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x5c

    .line 736
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_0

    .line 788
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 741
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 743
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 744
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 745
    .local v0, "c":C
    if-ne v0, v8, :cond_2

    if-ge v1, v3, :cond_2

    .line 746
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 747
    sparse-switch v0, :sswitch_data_0

    .line 761
    const/16 v6, 0x78

    if-ne v0, v6, :cond_3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/gdata/util/common/base/StringUtil;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 763
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/gdata/util/common/base/StringUtil;->hexValue(C)I

    move-result v5

    .line 764
    .local v5, "v":I
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/gdata/util/common/base/StringUtil;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 765
    mul-int/lit8 v6, v5, 0x10

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/google/gdata/util/common/base/StringUtil;->hexValue(C)I

    move-result v7

    add-int v5, v6, v7

    move v1, v2

    .line 767
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    int-to-char v0, v5

    .line 786
    .end local v5    # "v":I
    :cond_2
    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    .line 787
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 748
    :sswitch_0
    const/4 v0, 0x7

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 749
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_1
    const/16 v0, 0x8

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 750
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_2
    const/16 v0, 0xc

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 751
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_3
    const/16 v0, 0xa

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 752
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_4
    const/16 v0, 0xd

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 753
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_5
    const/16 v0, 0x9

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 754
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_6
    const/16 v0, 0xb

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 755
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_7
    const/16 v0, 0x5c

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 756
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_8
    const/16 v0, 0x3f

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 757
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_9
    const/16 v0, 0x27

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 758
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_a
    const/16 v0, 0x22

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 768
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_3
    invoke-static {v0}, Lcom/google/gdata/util/common/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 770
    add-int/lit8 v5, v0, -0x30

    .line 771
    .restart local v5    # "v":I
    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/gdata/util/common/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 772
    mul-int/lit8 v6, v5, 0x8

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int v5, v6, v7

    move v2, v1

    .line 774
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_4
    if-ge v2, v3, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/gdata/util/common/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 775
    mul-int/lit8 v6, v5, 0x8

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int v5, v6, v7

    .line 777
    :goto_3
    int-to-char v0, v5

    .line 778
    goto :goto_2

    .line 780
    .end local v1    # "i":I
    .end local v5    # "v":I
    .restart local v2    # "i":I
    :cond_5
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 788
    .end local v0    # "c":C
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .restart local v0    # "c":C
    .restart local v5    # "v":I
    :cond_7
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 747
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_a
        0x27 -> :sswitch_9
        0x3f -> :sswitch_8
        0x5c -> :sswitch_7
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
        0x76 -> :sswitch_6
    .end sparse-switch
.end method

.method public static final unescapeHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1130
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1131
    .local v3, "chars":[C
    array-length v15, v3

    new-array v6, v15, [C

    .line 1134
    .local v6, "escaped":[C
    const/4 v11, 0x0

    .line 1136
    .local v11, "pos":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v15, v3

    if-ge v7, v15, :cond_b

    .line 1137
    aget-char v15, v3, v7

    const/16 v16, 0x26

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 1138
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "pos":I
    .local v12, "pos":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    aget-char v15, v3, v7

    aput-char v15, v6, v11

    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    move v11, v12

    .line 1139
    .end local v12    # "pos":I
    .restart local v11    # "pos":I
    goto :goto_0

    .line 1143
    :cond_0
    add-int/lit8 v9, v7, 0x1

    .line 1144
    .local v9, "j":I
    array-length v15, v3

    if-ge v9, v15, :cond_1

    aget-char v15, v3, v9

    const/16 v16, 0x23

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 1145
    add-int/lit8 v9, v9, 0x1

    .line 1148
    :cond_1
    :goto_1
    array-length v15, v3

    if-ge v9, v15, :cond_2

    .line 1149
    aget-char v15, v3, v9

    invoke-static {v15}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v15

    if-nez v15, :cond_8

    .line 1153
    :cond_2
    const/4 v14, 0x0

    .line 1154
    .local v14, "replaced":Z
    array-length v15, v3

    if-ge v9, v15, :cond_6

    aget-char v15, v3, v9

    const/16 v16, 0x3b

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1155
    add-int/lit8 v15, v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x23

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 1157
    const-wide/16 v4, 0x0

    .line 1158
    .local v4, "charcode":J
    add-int/lit8 v15, v7, 0x2

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1159
    .local v2, "ch":C
    const/16 v15, 0x78

    if-eq v2, v15, :cond_3

    const/16 v15, 0x58

    if-ne v2, v15, :cond_9

    .line 1160
    :cond_3
    new-instance v15, Ljava/lang/String;

    add-int/lit8 v16, v7, 0x3

    sub-int v17, v9, v7

    add-int/lit8 v17, v17, -0x3

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v15, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 1165
    :cond_4
    :goto_2
    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-lez v15, :cond_5

    const-wide/32 v16, 0x10000

    cmp-long v15, v4, v16

    if-gez v15, :cond_5

    .line 1166
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "pos":I
    .restart local v12    # "pos":I
    long-to-int v15, v4

    int-to-char v15, v15

    :try_start_1
    aput-char v15, v6, v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1167
    const/4 v14, 0x1

    move v11, v12

    .line 1181
    .end local v2    # "ch":C
    .end local v4    # "charcode":J
    .end local v12    # "pos":I
    .restart local v11    # "pos":I
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 1184
    :cond_6
    if-nez v14, :cond_7

    .line 1186
    sub-int v15, v9, v7

    invoke-static {v3, v7, v6, v11, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1187
    sub-int v15, v9, v7

    add-int/2addr v11, v15

    .line 1189
    :cond_7
    move v7, v9

    .line 1190
    goto/16 :goto_0

    .line 1148
    .end local v14    # "replaced":Z
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1162
    .restart local v2    # "ch":C
    .restart local v4    # "charcode":J
    .restart local v14    # "replaced":Z
    :cond_9
    :try_start_2
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1163
    new-instance v15, Ljava/lang/String;

    add-int/lit8 v16, v7, 0x2

    sub-int v17, v9, v7

    add-int/lit8 v17, v17, -0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v15, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v4

    goto :goto_2

    .line 1174
    .end local v2    # "ch":C
    .end local v4    # "charcode":J
    :cond_a
    new-instance v10, Ljava/lang/String;

    sub-int v15, v9, v7

    add-int/lit8 v15, v15, 0x1

    invoke-direct {v10, v3, v7, v15}, Ljava/lang/String;-><init>([CII)V

    .line 1175
    .local v10, "key":Ljava/lang/String;
    sget-object v15, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    invoke-interface {v15, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Character;

    .line 1176
    .local v13, "repl":Ljava/lang/Character;
    if-eqz v13, :cond_5

    .line 1177
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "pos":I
    .restart local v12    # "pos":I
    invoke-virtual {v13}, Ljava/lang/Character;->charValue()C

    move-result v15

    aput-char v15, v6, v11

    .line 1178
    const/4 v14, 0x1

    move v11, v12

    .end local v12    # "pos":I
    .restart local v11    # "pos":I
    goto :goto_3

    .line 1191
    .end local v9    # "j":I
    .end local v10    # "key":Ljava/lang/String;
    .end local v13    # "repl":Ljava/lang/Character;
    .end local v14    # "replaced":Z
    :cond_b
    new-instance v15, Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v15, v6, v0, v11}, Ljava/lang/String;-><init>([CII)V

    return-object v15

    .line 1169
    .restart local v4    # "charcode":J
    .restart local v9    # "j":I
    .restart local v14    # "replaced":Z
    :catch_0
    move-exception v15

    goto :goto_3

    .end local v11    # "pos":I
    .restart local v2    # "ch":C
    .restart local v12    # "pos":I
    :catch_1
    move-exception v15

    move v11, v12

    .end local v12    # "pos":I
    .restart local v11    # "pos":I
    goto :goto_3
.end method

.method public static unescapeMySQLString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x5c

    const/16 v10, 0x27

    const/16 v9, 0x22

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 805
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 808
    .local v0, "chars":[C
    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    aget-char v5, v0, v7

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-char v6, v0, v6

    if-ne v5, v6, :cond_0

    aget-char v5, v0, v7

    if-eq v5, v10, :cond_1

    aget-char v5, v0, v7

    if-eq v5, v9, :cond_1

    .line 810
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not a valid MySQL string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 815
    :cond_1
    const/4 v3, 0x1

    .line 816
    .local v3, "j":I
    const/4 v1, 0x0

    .line 817
    .local v1, "f":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_7

    .line 818
    if-nez v1, :cond_4

    .line 819
    aget-char v5, v0, v2

    if-ne v5, v11, :cond_2

    .line 820
    const/4 v1, 0x1

    .line 817
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 821
    :cond_2
    aget-char v5, v0, v2

    aget-char v6, v0, v7

    if-ne v5, v6, :cond_3

    .line 822
    const/4 v1, 0x2

    goto :goto_1

    .line 824
    :cond_3
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget-char v5, v0, v2

    aput-char v5, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_1

    .line 826
    :cond_4
    if-ne v1, v8, :cond_5

    .line 827
    aget-char v5, v0, v2

    sparse-switch v5, :sswitch_data_0

    .line 839
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aget-char v5, v0, v2

    aput-char v5, v0, v3

    move v3, v4

    .line 842
    .end local v4    # "j":I
    .restart local v3    # "j":I
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 828
    :sswitch_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aput-char v7, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 829
    :sswitch_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aput-char v10, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 830
    :sswitch_2
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aput-char v9, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 831
    :sswitch_3
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    const/16 v5, 0x8

    aput-char v5, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 832
    :sswitch_4
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    const/16 v5, 0xa

    aput-char v5, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 833
    :sswitch_5
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    const/16 v5, 0xd

    aput-char v5, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 834
    :sswitch_6
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    const/16 v5, 0x9

    aput-char v5, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 835
    :sswitch_7
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    const/16 v5, 0x1a

    aput-char v5, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 836
    :sswitch_8
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aput-char v11, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 845
    :cond_5
    aget-char v5, v0, v2

    aget-char v6, v0, v7

    if-eq v5, v6, :cond_6

    .line 846
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not a valid MySQL string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 848
    :cond_6
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aget-char v5, v0, v7

    aput-char v5, v0, v3

    .line 849
    const/4 v1, 0x0

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto/16 :goto_1

    .line 853
    :cond_7
    if-eqz v1, :cond_8

    .line 854
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not a valid MySQL string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 858
    :cond_8
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, -0x1

    invoke-direct {v5, v0, v8, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    .line 827
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x30 -> :sswitch_0
        0x5c -> :sswitch_8
        0x62 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x7a -> :sswitch_7
    .end sparse-switch
.end method

.method public static unicodeEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2396
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->allAscii(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2416
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 2399
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2400
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2401
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 2402
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2403
    .local v0, "ch":C
    const/16 v7, 0x7f

    if-gt v0, v7, :cond_1

    .line 2404
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2401
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2406
    :cond_1
    const-string v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2407
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 2409
    .local v1, "hexString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v5, v7, 0x4

    .line 2410
    .local v5, "numZerosToPad":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    if-ge v3, v5, :cond_2

    .line 2411
    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2410
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2413
    :cond_2
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2416
    .end local v0    # "ch":C
    .end local v1    # "hexString":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v5    # "numZerosToPad":I
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static utf8ToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2749
    const-string v0, "UTF8"

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/StringUtil;->encodingToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static xmlCDataEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 1480
    sget-object v3, Lcom/google/gdata/util/common/base/StringUtil;->CONTROL_MATCHER:Lcom/google/gdata/util/common/base/CharMatcher;

    invoke-virtual {v3, p0}, Lcom/google/gdata/util/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1482
    const-string v3, "]]>"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1483
    .local v0, "found":I
    if-ne v0, v4, :cond_0

    .line 1497
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1489
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1490
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1492
    .local v1, "prev":I
    :cond_1
    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    const-string v3, "]]&gt;<![CDATA["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    add-int/lit8 v1, v0, 0x3

    .line 1495
    const-string v3, "]]>"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1496
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static xmlContentEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1409
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1410
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1411
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 1423
    :pswitch_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1409
    :goto_1
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1412
    :pswitch_2
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1413
    :pswitch_3
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1426
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static xmlEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1557
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1558
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1559
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    .line 1588
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1557
    :goto_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1561
    :sswitch_1
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1564
    :sswitch_2
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1567
    :sswitch_3
    const-string v3, "&apos;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1570
    :sswitch_4
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1573
    :sswitch_5
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1576
    :sswitch_6
    const-string v3, "&#xA;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1579
    :sswitch_7
    const-string v3, "&#xD;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1582
    :sswitch_8
    const-string v3, "&#x9;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1592
    .end local v0    # "ch":C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1559
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_8
        0xa -> :sswitch_6
        0xd -> :sswitch_7
        0x22 -> :sswitch_1
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x3c -> :sswitch_4
        0x3e -> :sswitch_5
    .end sparse-switch
.end method

.method public static xmlSingleQuotedEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1436
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1437
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1438
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 1452
    :pswitch_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1436
    :goto_1
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1439
    :pswitch_2
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1440
    :pswitch_3
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1441
    :pswitch_4
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1442
    :pswitch_5
    const-string v3, "&#xA;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1455
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
