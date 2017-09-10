.class public Lorg/mortbay/jetty/EncodedHttpURI;
.super Lorg/mortbay/jetty/HttpURI;
.source "EncodedHttpURI.java"


# instance fields
.field private _encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/mortbay/jetty/HttpURI;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_encoding:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public decodeQueryTo(Lorg/mortbay/util/MultiMap;)V
    .locals 4
    .param p1, "parameters"    # Lorg/mortbay/util/MultiMap;

    .prologue
    .line 122
    iget v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_query:I

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_fragment:I

    iget v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public decodeQueryTo(Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V
    .locals 4
    .param p1, "parameters"    # Lorg/mortbay/util/MultiMap;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 130
    iget v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_query:I

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    if-nez p2, :cond_1

    .line 134
    iget-object p2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_encoding:Ljava/lang/String;

    .line 135
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_fragment:I

    iget v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, p2}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    iget v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_authority:I

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_path:I

    if-ne v0, v1, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_authority:I

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_path:I

    iget v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_authority:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCompletePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 89
    iget v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_path:I

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_end:I

    if-ne v0, v1, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_path:I

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_end:I

    iget v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_path:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDecodedPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    iget v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_path:I

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_param:I

    if-ne v0, v1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_path:I

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_param:I

    iget v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_path:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lorg/mortbay/util/URIUtil;->decodePath([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    iget v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_fragment:I

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_end:I

    if-ne v0, v1, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_fragment:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_end:I

    iget v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_fragment:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    iget v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_host:I

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_port:I

    if-ne v0, v1, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_host:I

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_port:I

    iget v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_host:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParam()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    iget v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_param:I

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_query:I

    if-ne v0, v1, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_param:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_query:I

    iget v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_param:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    iget v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_path:I

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_param:I

    if-ne v0, v1, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_path:I

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_param:I

    iget v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_path:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPathAndParam()Ljava/lang/String;
    .locals 4

    .prologue
    .line 82
    iget v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_path:I

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_query:I

    if-ne v0, v1, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_path:I

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_query:I

    iget v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_path:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPort()I
    .locals 4

    .prologue
    .line 61
    iget v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_port:I

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_path:I

    if-ne v0, v1, :cond_0

    .line 62
    const/4 v0, -0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_port:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_path:I

    iget v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_port:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/mortbay/util/TypeUtil;->parseInt([BIII)I

    move-result v0

    goto :goto_0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    iget v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_query:I

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_fragment:I

    iget v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x70

    const/16 v4, 0x68

    const/16 v3, 0x74

    .line 25
    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_scheme:I

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_authority:I

    if-ne v1, v2, :cond_0

    .line 26
    const/4 v1, 0x0

    .line 42
    :goto_0
    return-object v1

    .line 27
    :cond_0
    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_authority:I

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_scheme:I

    sub-int v0, v1, v2

    .line 28
    .local v0, "l":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_scheme:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    if-ne v1, v5, :cond_1

    .line 33
    const-string v1, "http"

    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_scheme:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x4

    aget-byte v1, v1, v2

    const/16 v2, 0x73

    if-ne v1, v2, :cond_2

    .line 40
    const-string v1, "https"

    goto :goto_0

    .line 42
    :cond_2
    iget-object v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_scheme:I

    iget v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_authority:I

    iget v4, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_scheme:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hasQuery()Z
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_fragment:I

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_query:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_rawString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_scheme:I

    iget v2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_end:I

    iget v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_scheme:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_encoding:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_rawString:Ljava/lang/String;

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->_rawString:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Lorg/mortbay/util/Utf8StringBuffer;)V
    .locals 2
    .param p1, "buf"    # Lorg/mortbay/util/Utf8StringBuffer;

    .prologue
    .line 147
    invoke-virtual {p1}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/EncodedHttpURI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    return-void
.end method
