.class public abstract Lorg/apache/sanselan/util/UnicodeUtils;
.super Ljava/lang/Object;
.source "UnicodeUtils.java"

# interfaces
.implements Lorg/apache/sanselan/common/BinaryConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/util/UnicodeUtils$1;,
        Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16WithBOM;,
        Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16NoBOM;,
        Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16;,
        Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF8;,
        Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsASCII;,
        Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;
    }
.end annotation


# static fields
.field public static final CHAR_ENCODING_CODE_AMBIGUOUS:I = -0x1

.field public static final CHAR_ENCODING_CODE_ISO_8859_1:I = 0x0

.field public static final CHAR_ENCODING_CODE_UTF_16_BIG_ENDIAN_NO_BOM:I = 0x3

.field public static final CHAR_ENCODING_CODE_UTF_16_BIG_ENDIAN_WITH_BOM:I = 0x1

.field public static final CHAR_ENCODING_CODE_UTF_16_LITTLE_ENDIAN_NO_BOM:I = 0x4

.field public static final CHAR_ENCODING_CODE_UTF_16_LITTLE_ENDIAN_WITH_BOM:I = 0x2

.field public static final CHAR_ENCODING_CODE_UTF_8:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method constructor <init>(Lorg/apache/sanselan/util/UnicodeUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/sanselan/util/UnicodeUtils$1;

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/apache/sanselan/util/UnicodeUtils;-><init>()V

    return-void
.end method

.method private static findFirstDoubleByteTerminator([BI)I
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "index"    # I

    .prologue
    .line 182
    move v2, p1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 184
    aget-byte v3, p0, p1

    and-int/lit16 v0, v3, 0xff

    .line 185
    .local v0, "c1":I
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    .line 186
    .local v1, "c2":I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 189
    .end local v0    # "c1":I
    .end local v1    # "c2":I
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 182
    .restart local v0    # "c1":I
    .restart local v1    # "c2":I
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 189
    .end local v0    # "c1":I
    .end local v1    # "c2":I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static getInstance(I)Lorg/apache/sanselan/util/UnicodeUtils;
    .locals 3
    .param p0, "charEncodingCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 210
    packed-switch p0, :pswitch_data_0

    .line 226
    new-instance v0, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown char encoding code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :pswitch_0
    new-instance v0, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsASCII;

    invoke-direct {v0, v1}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsASCII;-><init>(Lorg/apache/sanselan/util/UnicodeUtils$1;)V

    .line 224
    :goto_0
    return-object v0

    .line 216
    :pswitch_1
    new-instance v0, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF8;

    invoke-direct {v0, v1}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF8;-><init>(Lorg/apache/sanselan/util/UnicodeUtils$1;)V

    goto :goto_0

    .line 220
    :pswitch_2
    new-instance v0, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16WithBOM;

    invoke-direct {v0}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16WithBOM;-><init>()V

    goto :goto_0

    .line 222
    :pswitch_3
    new-instance v0, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16NoBOM;

    const/16 v1, 0x4d

    invoke-direct {v0, v1}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16NoBOM;-><init>(I)V

    goto :goto_0

    .line 224
    :pswitch_4
    new-instance v0, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16NoBOM;

    const/16 v1, 0x49

    invoke-direct {v0, v1}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16NoBOM;-><init>(I)V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static final isValidISO_8859_1(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 166
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 168
    .local v1, "roundtrip":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 169
    .end local v1    # "roundtrip":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error parsing string."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected abstract findEnd([BIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;
        }
    .end annotation
.end method

.method public final findEndWithTerminator([BI)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/util/UnicodeUtils;->findEnd([BIZ)I

    move-result v0

    return v0
.end method

.method public final findEndWithoutTerminator([BI)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/util/UnicodeUtils;->findEnd([BIZ)I

    move-result v0

    return v0
.end method
