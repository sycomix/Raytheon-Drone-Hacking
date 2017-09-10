.class Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF8;
.super Lorg/apache/sanselan/util/UnicodeUtils;
.source "UnicodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/util/UnicodeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnicodeMetricsUTF8"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sanselan/util/UnicodeUtils;-><init>(Lorg/apache/sanselan/util/UnicodeUtils$1;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/sanselan/util/UnicodeUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/sanselan/util/UnicodeUtils$1;

    .prologue
    .line 261
    invoke-direct {p0}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF8;-><init>()V

    return-void
.end method


# virtual methods
.method public findEnd([BIZ)I
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "includeTerminator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xbf

    const/16 v6, 0x80

    .line 271
    :cond_0
    :goto_0
    array-length v5, p1

    if-ne p2, v5, :cond_1

    .line 272
    array-length v5, p1

    .line 278
    :goto_1
    return v5

    .line 273
    :cond_1
    array-length v5, p1

    if-le p2, v5, :cond_2

    .line 274
    new-instance v5, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;

    const-string v6, "Terminator not found."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 276
    :cond_2
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "index":I
    .local v4, "index":I
    aget-byte v5, p1, p2

    and-int/lit16 v0, v5, 0xff

    .line 277
    .local v0, "c1":I
    if-nez v0, :cond_4

    .line 278
    if-eqz p3, :cond_3

    move v5, v4

    :goto_2
    move p2, v4

    .end local v4    # "index":I
    .restart local p2    # "index":I
    goto :goto_1

    .end local p2    # "index":I
    .restart local v4    # "index":I
    :cond_3
    add-int/lit8 v5, v4, -0x1

    goto :goto_2

    .line 279
    :cond_4
    const/16 v5, 0x7f

    if-gt v0, v5, :cond_5

    move p2, v4

    .line 280
    .end local v4    # "index":I
    .restart local p2    # "index":I
    goto :goto_0

    .line 281
    .end local p2    # "index":I
    .restart local v4    # "index":I
    :cond_5
    const/16 v5, 0xdf

    if-gt v0, v5, :cond_8

    .line 283
    array-length v5, p1

    if-lt v4, v5, :cond_6

    .line 284
    new-instance v5, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;

    const-string v6, "Invalid unicode."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 286
    :cond_6
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "index":I
    .restart local p2    # "index":I
    aget-byte v5, p1, v4

    and-int/lit16 v1, v5, 0xff

    .line 287
    .local v1, "c2":I
    if-lt v1, v6, :cond_7

    if-le v1, v7, :cond_0

    .line 288
    :cond_7
    new-instance v5, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;

    const-string v6, "Invalid code point."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 289
    .end local v1    # "c2":I
    .end local p2    # "index":I
    .restart local v4    # "index":I
    :cond_8
    const/16 v5, 0xef

    if-gt v0, v5, :cond_e

    .line 291
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_9

    .line 292
    new-instance v5, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;

    const-string v6, "Invalid unicode."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 294
    :cond_9
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "index":I
    .restart local p2    # "index":I
    aget-byte v5, p1, v4

    and-int/lit16 v1, v5, 0xff

    .line 295
    .restart local v1    # "c2":I
    if-lt v1, v6, :cond_a

    if-le v1, v7, :cond_b

    .line 296
    :cond_a
    new-instance v5, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;

    const-string v6, "Invalid code point."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 297
    :cond_b
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "index":I
    .restart local v4    # "index":I
    aget-byte v5, p1, p2

    and-int/lit16 v2, v5, 0xff

    .line 298
    .local v2, "c3":I
    if-lt v2, v6, :cond_c

    if-le v2, v7, :cond_d

    .line 299
    :cond_c
    new-instance v5, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;

    const-string v6, "Invalid code point."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d
    move p2, v4

    .line 300
    .end local v4    # "index":I
    .restart local p2    # "index":I
    goto :goto_0

    .end local v1    # "c2":I
    .end local v2    # "c3":I
    .end local p2    # "index":I
    .restart local v4    # "index":I
    :cond_e
    const/16 v5, 0xf4

    if-gt v0, v5, :cond_15

    .line 302
    array-length v5, p1

    add-int/lit8 v5, v5, -0x2

    if-lt v4, v5, :cond_f

    .line 303
    new-instance v5, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;

    const-string v6, "Invalid unicode."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 305
    :cond_f
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "index":I
    .restart local p2    # "index":I
    aget-byte v5, p1, v4

    and-int/lit16 v1, v5, 0xff

    .line 306
    .restart local v1    # "c2":I
    if-lt v1, v6, :cond_10

    if-le v1, v7, :cond_11

    .line 307
    :cond_10
    new-instance v5, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;

    const-string v6, "Invalid code point."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 308
    :cond_11
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "index":I
    .restart local v4    # "index":I
    aget-byte v5, p1, p2

    and-int/lit16 v2, v5, 0xff

    .line 309
    .restart local v2    # "c3":I
    if-lt v2, v6, :cond_12

    if-le v2, v7, :cond_13

    .line 310
    :cond_12
    new-instance v5, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;

    const-string v6, "Invalid code point."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 311
    :cond_13
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "index":I
    .restart local p2    # "index":I
    aget-byte v5, p1, v4

    and-int/lit16 v3, v5, 0xff

    .line 312
    .local v3, "c4":I
    if-lt v3, v6, :cond_14

    if-le v3, v7, :cond_0

    .line 313
    :cond_14
    new-instance v5, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;

    const-string v6, "Invalid code point."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 315
    .end local v1    # "c2":I
    .end local v2    # "c3":I
    .end local v3    # "c4":I
    .end local p2    # "index":I
    .restart local v4    # "index":I
    :cond_15
    new-instance v5, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;

    const-string v6, "Invalid code point."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
