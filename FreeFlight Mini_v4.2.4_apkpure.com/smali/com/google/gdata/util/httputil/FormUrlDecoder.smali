.class public Lcom/google/gdata/util/httputil/FormUrlDecoder;
.super Ljava/lang/Object;
.source "FormUrlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;,
        Lcom/google/gdata/util/httputil/FormUrlDecoder$ValueAction;,
        Lcom/google/gdata/util/httputil/FormUrlDecoder$NameAction;,
        Lcom/google/gdata/util/httputil/FormUrlDecoder$Callback;,
        Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;
    }
.end annotation


# static fields
.field private static parser:Lcom/google/gdata/util/parser/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/util/parser/Parser",
            "<",
            "Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 210
    sget-object v5, Lcom/google/gdata/util/parser/Chset;->ANYCHAR:Lcom/google/gdata/util/parser/Chset;

    new-instance v6, Lcom/google/gdata/util/parser/Chset;

    const-string v7, "&="

    invoke-direct {v6, v7}, Lcom/google/gdata/util/parser/Chset;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/google/gdata/util/parser/Chset;->difference(Lcom/google/gdata/util/parser/Chset;Lcom/google/gdata/util/parser/Chset;)Lcom/google/gdata/util/parser/Chset;

    move-result-object v1

    .line 211
    .local v1, "nameToken":Lcom/google/gdata/util/parser/Chset;
    sget-object v5, Lcom/google/gdata/util/parser/Chset;->ANYCHAR:Lcom/google/gdata/util/parser/Chset;

    new-instance v6, Lcom/google/gdata/util/parser/Chset;

    const-string v7, "&"

    invoke-direct {v6, v7}, Lcom/google/gdata/util/parser/Chset;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/google/gdata/util/parser/Chset;->difference(Lcom/google/gdata/util/parser/Chset;Lcom/google/gdata/util/parser/Chset;)Lcom/google/gdata/util/parser/Chset;

    move-result-object v4

    .line 212
    .local v4, "valueToken":Lcom/google/gdata/util/parser/Chset;
    invoke-virtual {v1}, Lcom/google/gdata/util/parser/Chset;->star()Lcom/google/gdata/util/parser/Parser;

    move-result-object v5

    new-instance v6, Lcom/google/gdata/util/httputil/FormUrlDecoder$NameAction;

    invoke-direct {v6, v8}, Lcom/google/gdata/util/httputil/FormUrlDecoder$NameAction;-><init>(Lcom/google/gdata/util/httputil/FormUrlDecoder$1;)V

    invoke-virtual {v5, v6}, Lcom/google/gdata/util/parser/Parser;->action(Lcom/google/gdata/util/parser/Callback;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    .line 213
    .local v0, "name":Lcom/google/gdata/util/parser/Parser;, "Lcom/google/gdata/util/parser/Parser<Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;>;"
    invoke-virtual {v4}, Lcom/google/gdata/util/parser/Chset;->plus()Lcom/google/gdata/util/parser/Parser;

    move-result-object v5

    new-instance v6, Lcom/google/gdata/util/httputil/FormUrlDecoder$ValueAction;

    invoke-direct {v6, v8}, Lcom/google/gdata/util/httputil/FormUrlDecoder$ValueAction;-><init>(Lcom/google/gdata/util/httputil/FormUrlDecoder$1;)V

    invoke-virtual {v5, v6}, Lcom/google/gdata/util/parser/Parser;->action(Lcom/google/gdata/util/parser/Callback;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v3

    .line 214
    .local v3, "value":Lcom/google/gdata/util/parser/Parser;, "Lcom/google/gdata/util/parser/Parser<Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;>;"
    invoke-virtual {v3}, Lcom/google/gdata/util/parser/Parser;->optional()Lcom/google/gdata/util/parser/Parser;

    move-result-object v3

    .line 215
    new-instance v5, Lcom/google/gdata/util/parser/Chset;

    const/16 v6, 0x3d

    invoke-direct {v5, v6}, Lcom/google/gdata/util/parser/Chset;-><init>(C)V

    invoke-static {v5, v3}, Lcom/google/gdata/util/parser/Parser;->sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Lcom/google/gdata/util/parser/Parser;->optional()Lcom/google/gdata/util/parser/Parser;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/gdata/util/parser/Parser;->sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v2

    .line 218
    .local v2, "parameter":Lcom/google/gdata/util/parser/Parser;, "Lcom/google/gdata/util/parser/Parser<Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;>;"
    new-instance v5, Lcom/google/gdata/util/parser/Chset;

    const/16 v6, 0x26

    invoke-direct {v5, v6}, Lcom/google/gdata/util/parser/Chset;-><init>(C)V

    invoke-virtual {v2, v5}, Lcom/google/gdata/util/parser/Parser;->list(Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gdata/util/parser/Parser;->optional()Lcom/google/gdata/util/parser/Parser;

    move-result-object v5

    sput-object v5, Lcom/google/gdata/util/httputil/FormUrlDecoder;->parser:Lcom/google/gdata/util/parser/Parser;

    .line 219
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic access$100([CIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [C
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/google/gdata/util/httputil/FormUrlDecoder;->decodeString([CIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeString([CIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "buf"    # [C
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v3, Ljava/lang/String;

    sub-int v4, p2, p1

    invoke-direct {v3, p0, p1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 142
    .local v3, "str":Ljava/lang/String;
    :try_start_0
    invoke-static {p3}, Lcom/google/gdata/util/httputil/FormUrlDecoder;->requiresByteLevelDecoding(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    const-string v4, "ISO-8859-1"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 161
    .local v2, "rawBytes":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v3, v4

    .line 171
    .end local v2    # "rawBytes":[B
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 163
    .restart local v3    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {v3, p3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 169
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 170
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static getCanonicalEncodingName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 118
    move-object v0, p0

    .line 119
    .local v0, "canonicalName":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 121
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 128
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v1

    goto :goto_0

    .line 122
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;Lcom/google/gdata/util/httputil/ParamMap;Ljava/lang/String;)Lcom/google/gdata/util/httputil/ParamMap;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "map"    # Lcom/google/gdata/util/httputil/ParamMap;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    if-nez p1, :cond_0

    new-instance p1, Lcom/google/gdata/util/httputil/ParamMap;

    .end local p1    # "map":Lcom/google/gdata/util/httputil/ParamMap;
    invoke-direct {p1}, Lcom/google/gdata/util/httputil/ParamMap;-><init>()V

    .line 107
    :cond_0
    :goto_0
    return-object p1

    .line 96
    .restart local p1    # "map":Lcom/google/gdata/util/httputil/ParamMap;
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 97
    .local v0, "outMap":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/gdata/util/httputil/ParamMap;>;"
    new-instance v1, Lcom/google/gdata/util/httputil/FormUrlDecoder$1;

    invoke-direct {v1, v0}, Lcom/google/gdata/util/httputil/FormUrlDecoder$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {p0, p2, v1}, Lcom/google/gdata/util/httputil/FormUrlDecoder;->parseWithCallback(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/util/httputil/FormUrlDecoder$Callback;)V

    .line 107
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/httputil/ParamMap;

    move-object p1, v1

    goto :goto_0
.end method

.method public static parseWithCallback(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/util/httputil/FormUrlDecoder$Callback;)V
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/google/gdata/util/httputil/FormUrlDecoder$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    :cond_0
    return-void

    .line 74
    :cond_1
    new-instance v2, Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;

    invoke-direct {v2, p1}, Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, "result":Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;
    sget-object v3, Lcom/google/gdata/util/httputil/FormUrlDecoder;->parser:Lcom/google/gdata/util/parser/Parser;

    invoke-virtual {v3, p0, v2}, Lcom/google/gdata/util/parser/Parser;->parse(Ljava/lang/String;Ljava/lang/Object;)I

    .line 76
    iget-object v3, v2, Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;->params:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;

    .line 77
    .local v1, "param":Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;
    iget-object v3, v1, Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;->value:Ljava/lang/String;

    invoke-interface {p2, v3, v4}, Lcom/google/gdata/util/httputil/FormUrlDecoder$Callback;->handleParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static requiresByteLevelDecoding(Ljava/lang/String;)Z
    .locals 1
    .param p0, "encoding"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {p0}, Lcom/google/gdata/util/httputil/FormUrlDecoder;->getCanonicalEncodingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 183
    const-string v0, "SHIFT_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WINDOWS-31J"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
