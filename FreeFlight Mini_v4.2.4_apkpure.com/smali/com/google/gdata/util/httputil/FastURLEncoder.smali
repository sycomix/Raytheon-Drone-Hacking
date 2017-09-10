.class public Lcom/google/gdata/util/httputil/FastURLEncoder;
.super Ljava/lang/Object;
.source "FastURLEncoder.java"


# static fields
.field public static final CPLUSPLUS_COMPAT_SAFE_OCTETS:Ljava/util/BitSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_SAFE_OCTETS:Ljava/util/BitSet;

.field private static final HEX_DIGITS:[C

.field private static verifyAgainstJava:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x5a

    const/16 v6, 0x39

    const/16 v5, 0x2e

    const/16 v4, 0x2d

    const/16 v3, 0x2a

    .line 77
    const/4 v1, 0x0

    sput-boolean v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->verifyAgainstJava:Z

    .line 322
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->HEX_DIGITS:[C

    .line 329
    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->DEFAULT_SAFE_OCTETS:Ljava/util/BitSet;

    .line 337
    const/16 v0, 0x30

    .local v0, "i":I
    :goto_0
    if-gt v0, v6, :cond_0

    .line 338
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->DEFAULT_SAFE_OCTETS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    const/16 v0, 0x41

    :goto_1
    if-gt v0, v7, :cond_1

    .line 341
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->DEFAULT_SAFE_OCTETS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 343
    :cond_1
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    .line 344
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->DEFAULT_SAFE_OCTETS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 346
    :cond_2
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->DEFAULT_SAFE_OCTETS:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 347
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->DEFAULT_SAFE_OCTETS:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 348
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->DEFAULT_SAFE_OCTETS:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 349
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->DEFAULT_SAFE_OCTETS:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 361
    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->CPLUSPLUS_COMPAT_SAFE_OCTETS:Ljava/util/BitSet;

    .line 363
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->CPLUSPLUS_COMPAT_SAFE_OCTETS:Ljava/util/BitSet;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 364
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->CPLUSPLUS_COMPAT_SAFE_OCTETS:Ljava/util/BitSet;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 365
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->CPLUSPLUS_COMPAT_SAFE_OCTETS:Ljava/util/BitSet;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 366
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->CPLUSPLUS_COMPAT_SAFE_OCTETS:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 367
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->CPLUSPLUS_COMPAT_SAFE_OCTETS:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 368
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->CPLUSPLUS_COMPAT_SAFE_OCTETS:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 369
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->CPLUSPLUS_COMPAT_SAFE_OCTETS:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 370
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->CPLUSPLUS_COMPAT_SAFE_OCTETS:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 371
    const/16 v0, 0x30

    :goto_3
    if-gt v0, v6, :cond_3

    .line 372
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->CPLUSPLUS_COMPAT_SAFE_OCTETS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 373
    :cond_3
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->CPLUSPLUS_COMPAT_SAFE_OCTETS:Ljava/util/BitSet;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 374
    const/16 v0, 0x41

    :goto_4
    if-gt v0, v7, :cond_4

    .line 375
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->CPLUSPLUS_COMPAT_SAFE_OCTETS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 376
    :cond_4
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->CPLUSPLUS_COMPAT_SAFE_OCTETS:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 377
    const/16 v0, 0x61

    :goto_5
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_5

    .line 378
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->CPLUSPLUS_COMPAT_SAFE_OCTETS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 379
    :cond_5
    sget-object v1, Lcom/google/gdata/util/httputil/FastURLEncoder;->CPLUSPLUS_COMPAT_SAFE_OCTETS:Ljava/util/BitSet;

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 380
    return-void

    .line 322
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static createSafeOctetBitSet()Ljava/util/BitSet;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 402
    sget-object v0, Lcom/google/gdata/util/httputil/FastURLEncoder;->DEFAULT_SAFE_OCTETS:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 265
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Lcom/google/gdata/util/httputil/FastURLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    sget-object v2, Lcom/google/gdata/util/httputil/FastURLEncoder;->DEFAULT_SAFE_OCTETS:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-static {p0, p1, v2, v3}, Lcom/google/gdata/util/httputil/FastURLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "result":Ljava/lang/String;
    sget-boolean v2, Lcom/google/gdata/util/httputil/FastURLEncoder;->verifyAgainstJava:Z

    if-eqz v2, :cond_0

    .line 215
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "jresult":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    const-class v2, Lcom/google/gdata/util/httputil/FastURLEncoder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FastURLEncoder does not match java. Java: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'  FastURLEncoder: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 224
    .end local v0    # "jresult":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;Z)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "safeOctets"    # Ljava/util/BitSet;
    .param p3, "plusForSpace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 131
    .local v2, "out":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {p0, p1, p2, p3, v2}, Lcom/google/gdata/util/httputil/FastURLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;ZLjava/lang/Appendable;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 137
    .local v1, "needsEncoding":Z
    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 140
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 132
    .end local v1    # "needsEncoding":Z
    .restart local p0    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    throw v0

    .line 134
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public static encode(Ljava/lang/String;Ljava/util/BitSet;Z)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "safeOctets"    # Ljava/util/BitSet;
    .param p2, "plusForSpace"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1, p1, p2}, Lcom/google/gdata/util/httputil/FastURLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/Appendable;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 290
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1, p1}, Lcom/google/gdata/util/httputil/FastURLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 250
    sget-object v0, Lcom/google/gdata/util/httputil/FastURLEncoder;->DEFAULT_SAFE_OCTETS:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/google/gdata/util/httputil/FastURLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;ZLjava/lang/Appendable;)Z

    .line 251
    return-void
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;ZLjava/lang/Appendable;)Z
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "safeOctets"    # Ljava/util/BitSet;
    .param p3, "plusForSpace"    # Z
    .param p4, "out"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 175
    .local v2, "data":[B
    const/4 v1, 0x0

    .line 176
    .local v1, "containsSpace":Z
    const/4 v4, 0x0

    .line 178
    .local v4, "outputLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_3

    .line 179
    aget-byte v0, v2, v3

    .line 180
    .local v0, "c":I
    if-gez v0, :cond_0

    .line 181
    add-int/lit16 v0, v0, 0x100

    .line 183
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 184
    int-to-char v5, v0

    invoke-interface {p4, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 185
    add-int/lit8 v4, v4, 0x1

    .line 178
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    :cond_1
    if-eqz p3, :cond_2

    const/16 v5, 0x20

    if-ne v0, v5, :cond_2

    .line 187
    const/4 v1, 0x1

    .line 188
    const/16 v5, 0x2b

    invoke-interface {p4, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 191
    :cond_2
    const/16 v5, 0x25

    invoke-interface {p4, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 192
    sget-object v5, Lcom/google/gdata/util/httputil/FastURLEncoder;->HEX_DIGITS:[C

    shr-int/lit8 v6, v0, 0x4

    aget-char v5, v5, v6

    invoke-interface {p4, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 193
    sget-object v5, Lcom/google/gdata/util/httputil/FastURLEncoder;->HEX_DIGITS:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    invoke-interface {p4, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 194
    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 198
    .end local v0    # "c":I
    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_5

    :cond_4
    const/4 v5, 0x1

    :goto_2
    return v5

    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method static getVerifyAgainstJava()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 101
    sget-boolean v0, Lcom/google/gdata/util/httputil/FastURLEncoder;->verifyAgainstJava:Z

    return v0
.end method

.method static setVerifyAgainstJava(Z)V
    .locals 0
    .param p0, "shouldVerify"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 93
    sput-boolean p0, Lcom/google/gdata/util/httputil/FastURLEncoder;->verifyAgainstJava:Z

    .line 94
    return-void
.end method
