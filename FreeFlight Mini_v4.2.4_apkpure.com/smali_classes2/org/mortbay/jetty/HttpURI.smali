.class public Lorg/mortbay/jetty/HttpURI;
.super Ljava/lang/Object;
.source "HttpURI.java"


# static fields
.field private static final ASTERISK:I = 0xa

.field private static final AUTH:I = 0x4

.field private static final AUTH_OR_PATH:I = 0x1

.field private static final IPV6:I = 0x5

.field private static final PARAM:I = 0x8

.field private static final PATH:I = 0x7

.field private static final PORT:I = 0x6

.field private static final QUERY:I = 0x9

.field private static final SCHEME_OR_PATH:I = 0x2

.field private static final START:I

.field private static __empty:[B


# instance fields
.field _authority:I

.field _end:I

.field _fragment:I

.field _host:I

.field _param:I

.field _partial:Z

.field _path:I

.field _port:I

.field _query:I

.field _raw:[B

.field _rawString:Ljava/lang/String;

.field _scheme:I

.field _utf8b:Lorg/mortbay/util/Utf8StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/mortbay/jetty/HttpURI;->__empty:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpURI;->_partial:Z

    .line 59
    sget-object v0, Lorg/mortbay/jetty/HttpURI;->__empty:[B

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    .line 71
    new-instance v0, Lorg/mortbay/util/Utf8StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_utf8b:Lorg/mortbay/util/Utf8StringBuffer;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v3, p0, Lorg/mortbay/jetty/HttpURI;->_partial:Z

    .line 59
    sget-object v1, Lorg/mortbay/jetty/HttpURI;->__empty:[B

    iput-object v1, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    .line 71
    new-instance v1, Lorg/mortbay/util/Utf8StringBuffer;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/mortbay/jetty/HttpURI;->_utf8b:Lorg/mortbay/util/Utf8StringBuffer;

    .line 89
    iput-object p1, p0, Lorg/mortbay/jetty/HttpURI;->_rawString:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 91
    .local v0, "b":[B
    array-length v1, v0

    invoke-virtual {p0, v0, v3, v1}, Lorg/mortbay/jetty/HttpURI;->parse([BII)V

    .line 92
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "parsePartialAuth"    # Z

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpURI;->_partial:Z

    .line 59
    sget-object v0, Lorg/mortbay/jetty/HttpURI;->__empty:[B

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    .line 71
    new-instance v0, Lorg/mortbay/util/Utf8StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_utf8b:Lorg/mortbay/util/Utf8StringBuffer;

    .line 84
    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpURI;->_partial:Z

    .line 85
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "raw"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpURI;->_partial:Z

    .line 59
    sget-object v0, Lorg/mortbay/jetty/HttpURI;->__empty:[B

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    .line 71
    new-instance v0, Lorg/mortbay/util/Utf8StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_utf8b:Lorg/mortbay/util/Utf8StringBuffer;

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lorg/mortbay/jetty/HttpURI;->parse2([BII)V

    .line 97
    return-void
.end method

.method private parse2([BII)V
    .locals 12
    .param p1, "raw"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v11, 0x23

    const/16 v10, 0x3a

    const/16 v9, 0x2f

    .line 114
    iput-object p1, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    .line 115
    move v2, p2

    .line 116
    .local v2, "i":I
    add-int v1, p2, p3

    .line 117
    .local v1, "e":I
    const/4 v6, 0x0

    .line 118
    .local v6, "state":I
    move v4, p2

    .line 119
    .local v4, "m":I
    add-int v7, p2, p3

    iput v7, p0, Lorg/mortbay/jetty/HttpURI;->_end:I

    .line 120
    iput p2, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    .line 121
    iput p2, p0, Lorg/mortbay/jetty/HttpURI;->_authority:I

    .line 122
    iput p2, p0, Lorg/mortbay/jetty/HttpURI;->_host:I

    .line 123
    iput p2, p0, Lorg/mortbay/jetty/HttpURI;->_port:I

    .line 124
    iput p2, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    .line 125
    iget v7, p0, Lorg/mortbay/jetty/HttpURI;->_end:I

    iput v7, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    .line 126
    iget v7, p0, Lorg/mortbay/jetty/HttpURI;->_end:I

    iput v7, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    .line 127
    iget v7, p0, Lorg/mortbay/jetty/HttpURI;->_end:I

    iput v7, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    :cond_0
    move v3, v2

    .line 128
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_a

    .line 130
    iget-object v7, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    aget-byte v7, v7, v3

    and-int/lit16 v7, v7, 0xff

    int-to-char v0, v7

    .line 131
    .local v0, "c":C
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v5, v3

    .line 133
    .local v5, "s":I
    packed-switch v6, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v3, v2

    .line 398
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 137
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :pswitch_1
    move v4, v5

    .line 138
    sparse-switch v0, :sswitch_data_0

    .line 163
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 164
    const/4 v6, 0x2

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 141
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_0
    const/4 v6, 0x1

    move v3, v2

    .line 142
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 144
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_1
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    .line 145
    const/16 v6, 0x8

    move v3, v2

    .line 146
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 148
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_2
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    .line 149
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    .line 150
    const/16 v6, 0x9

    move v3, v2

    .line 151
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 153
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_3
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    .line 154
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    .line 155
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    move v3, v2

    .line 156
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 158
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_4
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    .line 159
    const/16 v6, 0xa

    move v3, v2

    .line 160
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 166
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    iget-object v8, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    sget-object v9, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v8, p2, p3, v9}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 174
    :pswitch_2
    iget-boolean v7, p0, Lorg/mortbay/jetty/HttpURI;->_partial:Z

    if-nez v7, :cond_2

    iget v7, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    iget v8, p0, Lorg/mortbay/jetty/HttpURI;->_authority:I

    if-eq v7, v8, :cond_3

    :cond_2
    if-ne v0, v9, :cond_3

    .line 176
    iput v2, p0, Lorg/mortbay/jetty/HttpURI;->_host:I

    .line 177
    iget v7, p0, Lorg/mortbay/jetty/HttpURI;->_end:I

    iput v7, p0, Lorg/mortbay/jetty/HttpURI;->_port:I

    .line 178
    iget v7, p0, Lorg/mortbay/jetty/HttpURI;->_end:I

    iput v7, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    .line 179
    const/4 v6, 0x4

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 181
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_3
    const/16 v7, 0x3b

    if-eq v0, v7, :cond_4

    const/16 v7, 0x3f

    if-eq v0, v7, :cond_4

    if-ne v0, v11, :cond_5

    .line 183
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 184
    const/4 v6, 0x7

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 188
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_5
    iput v4, p0, Lorg/mortbay/jetty/HttpURI;->_host:I

    .line 189
    iput v4, p0, Lorg/mortbay/jetty/HttpURI;->_port:I

    .line 190
    const/4 v6, 0x7

    move v3, v2

    .line 192
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 198
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :pswitch_3
    const/4 v7, 0x6

    if-le p3, v7, :cond_b

    const/16 v7, 0x74

    if-ne v0, v7, :cond_b

    .line 200
    iget-object v7, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    add-int/lit8 v8, p2, 0x3

    aget-byte v7, v7, v8

    if-ne v7, v10, :cond_6

    .line 202
    add-int/lit8 v5, p2, 0x3

    .line 203
    add-int/lit8 v2, p2, 0x4

    .line 204
    const/16 v0, 0x3a

    move v3, v2

    .line 220
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_2
    sparse-switch v0, :sswitch_data_1

    :goto_3
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_4
    move v3, v2

    .line 268
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 206
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_6
    iget-object v7, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    add-int/lit8 v8, p2, 0x4

    aget-byte v7, v7, v8

    if-ne v7, v10, :cond_7

    .line 208
    add-int/lit8 v5, p2, 0x4

    .line 209
    add-int/lit8 v2, p2, 0x5

    .line 210
    const/16 v0, 0x3a

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 212
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_7
    iget-object v7, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    add-int/lit8 v8, p2, 0x5

    aget-byte v7, v7, v8

    if-ne v7, v10, :cond_b

    .line 214
    add-int/lit8 v5, p2, 0x5

    .line 215
    add-int/lit8 v2, p2, 0x6

    .line 216
    const/16 v0, 0x3a

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 224
    :sswitch_5
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v4, v3

    .line 225
    iput v4, p0, Lorg/mortbay/jetty/HttpURI;->_authority:I

    .line 226
    iput v4, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    .line 227
    iget-object v7, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    aget-byte v7, v7, v2

    and-int/lit16 v7, v7, 0xff

    int-to-char v0, v7

    .line 228
    if-ne v0, v9, :cond_8

    .line 229
    const/4 v6, 0x1

    goto :goto_4

    .line 232
    :cond_8
    iput v4, p0, Lorg/mortbay/jetty/HttpURI;->_host:I

    .line 233
    iput v4, p0, Lorg/mortbay/jetty/HttpURI;->_port:I

    .line 234
    const/4 v6, 0x7

    .line 236
    goto :goto_4

    .line 241
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_6
    const/4 v6, 0x7

    move v2, v3

    .line 242
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_4

    .line 247
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_7
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    .line 248
    const/16 v6, 0x8

    move v2, v3

    .line 249
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_4

    .line 254
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_8
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    .line 255
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    .line 256
    const/16 v6, 0x9

    move v2, v3

    .line 257
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_4

    .line 262
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_9
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    .line 263
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    .line 264
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    goto :goto_3

    .line 273
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :pswitch_4
    sparse-switch v0, :sswitch_data_2

    :goto_5
    move v3, v2

    .line 301
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 278
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_a
    move v4, v5

    .line 279
    iput v4, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    .line 280
    iget v7, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    iput v7, p0, Lorg/mortbay/jetty/HttpURI;->_port:I

    .line 281
    const/4 v6, 0x7

    .line 282
    goto :goto_5

    .line 286
    :sswitch_b
    iput v2, p0, Lorg/mortbay/jetty/HttpURI;->_host:I

    goto :goto_5

    .line 291
    :sswitch_c
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_port:I

    .line 292
    const/4 v6, 0x6

    .line 293
    goto :goto_5

    .line 297
    :sswitch_d
    const/4 v6, 0x5

    goto :goto_5

    .line 306
    :pswitch_5
    sparse-switch v0, :sswitch_data_3

    :goto_6
    move v3, v2

    .line 319
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 310
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_e
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "No closing \']\' for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    sget-object v10, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v9, p2, p3, v10}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 314
    :sswitch_f
    const/4 v6, 0x4

    goto :goto_6

    .line 324
    :pswitch_6
    if-ne v0, v9, :cond_0

    .line 326
    move v4, v5

    .line 327
    iput v4, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    .line 328
    iget v7, p0, Lorg/mortbay/jetty/HttpURI;->_port:I

    iget v8, p0, Lorg/mortbay/jetty/HttpURI;->_authority:I

    if-gt v7, v8, :cond_9

    .line 329
    iget v7, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    iput v7, p0, Lorg/mortbay/jetty/HttpURI;->_port:I

    .line 330
    :cond_9
    const/4 v6, 0x7

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 337
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :pswitch_7
    sparse-switch v0, :sswitch_data_4

    :goto_7
    move v3, v2

    .line 360
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 341
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_10
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    .line 342
    const/16 v6, 0x8

    .line 343
    goto :goto_7

    .line 347
    :sswitch_11
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    .line 348
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    .line 349
    const/16 v6, 0x9

    .line 350
    goto :goto_7

    .line 354
    :sswitch_12
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    .line 355
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    .line 356
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    goto/16 :goto_1

    .line 365
    :pswitch_8
    sparse-switch v0, :sswitch_data_5

    :goto_8
    move v3, v2

    .line 380
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 369
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_13
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    .line 370
    const/16 v6, 0x9

    .line 371
    goto :goto_8

    .line 375
    :sswitch_14
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    .line 376
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    goto/16 :goto_1

    .line 385
    :pswitch_9
    if-ne v0, v11, :cond_0

    .line 387
    iput v5, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    goto/16 :goto_1

    .line 395
    :pswitch_a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "only \'*\'"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 399
    .end local v0    # "c":C
    .end local v2    # "i":I
    .end local v5    # "s":I
    .restart local v3    # "i":I
    :cond_a
    return-void

    .end local v3    # "i":I
    .restart local v0    # "c":C
    .restart local v2    # "i":I
    .restart local v5    # "s":I
    :cond_b
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_2

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 138
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_3
        0x2a -> :sswitch_4
        0x2f -> :sswitch_0
        0x3b -> :sswitch_1
        0x3f -> :sswitch_2
    .end sparse-switch

    .line 220
    :sswitch_data_1
    .sparse-switch
        0x23 -> :sswitch_9
        0x2f -> :sswitch_6
        0x3a -> :sswitch_5
        0x3b -> :sswitch_7
        0x3f -> :sswitch_8
    .end sparse-switch

    .line 273
    :sswitch_data_2
    .sparse-switch
        0x2f -> :sswitch_a
        0x3a -> :sswitch_c
        0x40 -> :sswitch_b
        0x5b -> :sswitch_d
    .end sparse-switch

    .line 306
    :sswitch_data_3
    .sparse-switch
        0x2f -> :sswitch_e
        0x5d -> :sswitch_f
    .end sparse-switch

    .line 337
    :sswitch_data_4
    .sparse-switch
        0x23 -> :sswitch_12
        0x3b -> :sswitch_10
        0x3f -> :sswitch_11
    .end sparse-switch

    .line 365
    :sswitch_data_5
    .sparse-switch
        0x23 -> :sswitch_14
        0x3f -> :sswitch_13
    .end sparse-switch
.end method

.method private toUtf8String(II)Ljava/lang/String;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_utf8b:Lorg/mortbay/util/Utf8StringBuffer;

    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    .line 404
    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_utf8b:Lorg/mortbay/util/Utf8StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    invoke-virtual {v0, v1, p1, p2}, Lorg/mortbay/util/Utf8StringBuffer;->append([BII)V

    .line 405
    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_utf8b:Lorg/mortbay/util/Utf8StringBuffer;

    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->_end:I

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->_port:I

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->_host:I

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->_authority:I

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    .line 570
    sget-object v0, Lorg/mortbay/jetty/HttpURI;->__empty:[B

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    .line 571
    const-string v0, ""

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_rawString:Ljava/lang/String;

    .line 572
    return-void
.end method

.method public decodeQueryTo(Lorg/mortbay/util/MultiMap;)V
    .locals 4
    .param p1, "parameters"    # Lorg/mortbay/util/MultiMap;

    .prologue
    .line 549
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_utf8b:Lorg/mortbay/util/Utf8StringBuffer;

    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    .line 552
    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    iget v3, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/mortbay/jetty/HttpURI;->_utf8b:Lorg/mortbay/util/Utf8StringBuffer;

    invoke-static {v0, v1, v2, p1, v3}, Lorg/mortbay/util/UrlEncoded;->decodeUtf8To([BIILorg/mortbay/util/MultiMap;Lorg/mortbay/util/Utf8StringBuffer;)V

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
    .line 558
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    .line 565
    :goto_0
    return-void

    .line 561
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lorg/mortbay/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    iget v3, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, p1}, Lorg/mortbay/util/UrlEncoded;->decodeUtf8To([BIILorg/mortbay/util/MultiMap;)V

    goto :goto_0

    .line 564
    :cond_2
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 3

    .prologue
    .line 432
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_authority:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    if-ne v0, v1, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 434
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_authority:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_authority:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCompletePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 509
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_end:I

    if-ne v0, v1, :cond_0

    .line 510
    const/4 v0, 0x0

    .line 511
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_end:I

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDecodedPath()Ljava/lang/String;
    .locals 11

    .prologue
    .line 460
    iget v7, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    iget v8, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    if-ne v7, v8, :cond_0

    .line 461
    const/4 v7, 0x0

    .line 497
    :goto_0
    return-object v7

    .line 463
    :cond_0
    iget v7, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    iget v8, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    sub-int v4, v7, v8

    .line 464
    .local v4, "length":I
    const/4 v1, 0x0

    .line 465
    .local v1, "bytes":[B
    const/4 v5, 0x0

    .line 467
    .local v5, "n":I
    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    .local v2, "i":I
    :goto_1
    iget v7, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    if-ge v2, v7, :cond_4

    .line 469
    iget-object v7, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    aget-byte v0, v7, v2

    .line 471
    .local v0, "b":B
    const/16 v7, 0x25

    if-ne v0, v7, :cond_2

    add-int/lit8 v7, v2, 0x2

    iget v8, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    if-ge v7, v8, :cond_2

    .line 473
    iget-object v7, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    add-int/lit8 v8, v2, 0x1

    const/4 v9, 0x2

    const/16 v10, 0x10

    invoke-static {v7, v8, v9, v10}, Lorg/mortbay/util/TypeUtil;->parseInt([BIII)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v0, v7

    .line 474
    add-int/lit8 v2, v2, 0x2

    .line 482
    :cond_1
    if-nez v1, :cond_3

    .line 484
    new-array v1, v4, [B

    .line 485
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_3

    .line 486
    iget-object v7, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    iget v8, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    add-int/2addr v8, v3

    aget-byte v7, v7, v8

    aput-byte v7, v1, v3

    .line 485
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 476
    .end local v3    # "j":I
    :cond_2
    if-nez v1, :cond_1

    .line 478
    add-int/lit8 v5, v5, 0x1

    .line 467
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 489
    :cond_3
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "n":I
    .local v6, "n":I
    aput-byte v0, v1, v5

    move v5, v6

    .end local v6    # "n":I
    .restart local v5    # "n":I
    goto :goto_3

    .line 492
    .end local v0    # "b":B
    :cond_4
    if-nez v1, :cond_5

    .line 493
    iget v7, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    invoke-direct {p0, v7, v4}, Lorg/mortbay/jetty/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 495
    :cond_5
    iget-object v7, p0, Lorg/mortbay/jetty/HttpURI;->_utf8b:Lorg/mortbay/util/Utf8StringBuffer;

    invoke-virtual {v7}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    .line 496
    iget-object v7, p0, Lorg/mortbay/jetty/HttpURI;->_utf8b:Lorg/mortbay/util/Utf8StringBuffer;

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8, v5}, Lorg/mortbay/util/Utf8StringBuffer;->append([BII)V

    .line 497
    iget-object v7, p0, Lorg/mortbay/jetty/HttpURI;->_utf8b:Lorg/mortbay/util/Utf8StringBuffer;

    invoke-virtual {v7}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 3

    .prologue
    .line 542
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_end:I

    if-ne v0, v1, :cond_0

    .line 543
    const/4 v0, 0x0

    .line 544
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_end:I

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 439
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_host:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_port:I

    if-ne v0, v1, :cond_0

    .line 440
    const/4 v0, 0x0

    .line 441
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_host:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_port:I

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_host:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 516
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    if-ne v0, v1, :cond_0

    .line 517
    const/4 v0, 0x0

    .line 518
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 453
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    if-ne v0, v1, :cond_0

    .line 454
    const/4 v0, 0x0

    .line 455
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_param:I

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPathAndParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 502
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    if-ne v0, v1, :cond_0

    .line 503
    const/4 v0, 0x0

    .line 504
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPort()I
    .locals 4

    .prologue
    .line 446
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_port:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    if-ne v0, v1, :cond_0

    .line 447
    const/4 v0, -0x1

    .line 448
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_port:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_path:I

    iget v3, p0, Lorg/mortbay/jetty/HttpURI;->_port:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/mortbay/util/TypeUtil;->parseInt([BIII)I

    move-result v0

    goto :goto_0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 3

    .prologue
    .line 523
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    .line 524
    const/4 v0, 0x0

    .line 525
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 530
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    .line 531
    const/4 v0, 0x0

    .line 532
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    iget v3, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, p1}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x70

    const/16 v4, 0x68

    const/16 v3, 0x74

    .line 410
    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_authority:I

    if-ne v1, v2, :cond_0

    .line 411
    const/4 v1, 0x0

    .line 427
    :goto_0
    return-object v1

    .line 412
    :cond_0
    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_authority:I

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    sub-int v0, v1, v2

    .line 413
    .local v0, "l":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    if-ne v1, v5, :cond_1

    .line 418
    const-string v1, "http"

    goto :goto_0

    .line 419
    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x4

    aget-byte v1, v1, v2

    const/16 v2, 0x73

    if-ne v1, v2, :cond_2

    .line 425
    const-string v1, "https"

    goto :goto_0

    .line 427
    :cond_2
    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_authority:I

    iget v3, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2}, Lorg/mortbay/jetty/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hasQuery()Z
    .locals 2

    .prologue
    .line 537
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_fragment:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_query:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 3
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 102
    .local v0, "b":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lorg/mortbay/jetty/HttpURI;->parse2([BII)V

    .line 103
    iput-object p1, p0, Lorg/mortbay/jetty/HttpURI;->_rawString:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public parse([BII)V
    .locals 1
    .param p1, "raw"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_rawString:Ljava/lang/String;

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lorg/mortbay/jetty/HttpURI;->parse2([BII)V

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 576
    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_rawString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 577
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_end:I

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_rawString:Ljava/lang/String;

    .line 578
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_rawString:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Lorg/mortbay/util/Utf8StringBuffer;)V
    .locals 4
    .param p1, "buf"    # Lorg/mortbay/util/Utf8StringBuffer;

    .prologue
    .line 583
    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->_raw:[B

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->_end:I

    iget v3, p0, Lorg/mortbay/jetty/HttpURI;->_scheme:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/mortbay/util/Utf8StringBuffer;->append([BII)V

    .line 584
    return-void
.end method
