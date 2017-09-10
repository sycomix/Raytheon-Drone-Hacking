.class public Ljavax/servlet/http/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final LSTRING_FILE:Ljava/lang/String; = "javax.servlet.http.LocalStrings"

.field private static lStrings:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "javax.servlet.http.LocalStrings"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Ljavax/servlet/http/HttpUtils;->lStrings:Ljava/util/ResourceBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRequestURL(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/StringBuffer;
    .locals 5
    .param p0, "req"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 292
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 293
    .local v2, "url":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "scheme":Ljava/lang/String;
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getServerPort()I

    move-result v0

    .line 295
    .local v0, "port":I
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "urlPath":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    const-string v4, "://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    const-string v4, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x50

    if-ne v0, v4, :cond_1

    :cond_0
    const-string v4, "https"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x1bb

    if-eq v0, v4, :cond_2

    .line 305
    :cond_1
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 306
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getServerPort()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 312
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    return-object v2
.end method

.method private static parseName(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 233
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 234
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 235
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 236
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 258
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 234
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :sswitch_0
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 242
    :sswitch_1
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v2, 0x3

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 245
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 249
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "rest":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 262
    .end local v0    # "c":C
    .end local v1    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v3    # "rest":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 236
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method public static parsePostData(ILjavax/servlet/ServletInputStream;)Ljava/util/Hashtable;
    .locals 8
    .param p0, "len"    # I
    .param p1, "in"    # Ljavax/servlet/ServletInputStream;

    .prologue
    .line 183
    if-gtz p0, :cond_0

    .line 184
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 217
    :goto_0
    return-object v6

    .line 186
    :cond_0
    if-nez p1, :cond_1

    .line 187
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 193
    :cond_1
    new-array v5, p0, [B

    .line 195
    .local v5, "postedBytes":[B
    const/4 v3, 0x0

    .line 198
    .local v3, "offset":I
    :cond_2
    sub-int v6, p0, v3

    :try_start_0
    invoke-virtual {p1, v5, v3, v6}, Ljavax/servlet/ServletInputStream;->read([BII)I

    move-result v1

    .line 199
    .local v1, "inputLen":I
    if-gtz v1, :cond_3

    .line 200
    sget-object v6, Ljavax/servlet/http/HttpUtils;->lStrings:Ljava/util/ResourceBundle;

    const-string v7, "err.io.short_read"

    invoke-virtual {v6, v7}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1    # "inputLen":I
    .end local v2    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 203
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "inputLen":I
    :cond_3
    add-int/2addr v3, v1

    .line 204
    sub-int v6, p0, v3

    if-gtz v6, :cond_2

    .line 216
    :try_start_1
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "8859_1"

    invoke-direct {v4, v5, v6, p0, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 217
    .local v4, "postedBody":Ljava/lang/String;
    invoke-static {v4}, Ljavax/servlet/http/HttpUtils;->parseQueryString(Ljava/lang/String;)Ljava/util/Hashtable;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_0

    .line 218
    .end local v4    # "postedBody":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static parseQueryString(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 13
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 100
    const/4 v9, 0x0

    .line 102
    .local v9, "valArray":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 103
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 105
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 106
    .local v0, "ht":Ljava/util/Hashtable;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v6, "sb":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v10, "&"

    invoke-direct {v7, p0, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .local v7, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 109
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "pair":Ljava/lang/String;
    const/16 v10, 0x3d

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 111
    .local v5, "pos":I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_1

    .line 114
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 116
    :cond_1
    invoke-virtual {v4, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Ljavax/servlet/http/HttpUtils;->parseName(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Ljavax/servlet/http/HttpUtils;->parseName(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "val":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 119
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move-object v3, v10

    check-cast v3, [Ljava/lang/String;

    .line 120
    .local v3, "oldVals":[Ljava/lang/String;
    array-length v10, v3

    add-int/lit8 v10, v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    .line 121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v10, v3

    if-ge v1, v10, :cond_2

    .line 122
    aget-object v10, v3, v1

    aput-object v10, v9, v1

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_2
    array-length v10, v3

    aput-object v8, v9, v10

    .line 128
    .end local v1    # "i":I
    .end local v3    # "oldVals":[Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v2, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_3
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    .line 126
    aput-object v8, v9, v12

    goto :goto_2

    .line 130
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "pair":Ljava/lang/String;
    .end local v5    # "pos":I
    .end local v8    # "val":Ljava/lang/String;
    :cond_4
    return-object v0
.end method
