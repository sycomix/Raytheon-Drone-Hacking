.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;
.source "IntMath.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/IntMath$1;
    }
.end annotation


# static fields
.field static BIGGEST_BINOMIALS:[I = null
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FACTORIALS:[I

.field static final FLOOR_SQRT_MAX_INT:I = 0xb504
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final HALF_POWERS_OF_10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_LOG10_FOR_LEADING_ZEROS:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final POWERS_OF_10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 161
    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/IntMath;->MAX_LOG10_FOR_LEADING_ZEROS:[B

    .line 164
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/common/math/IntMath;->POWERS_OF_10:[I

    .line 168
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/IntMath;->HALF_POWERS_OF_10:[I

    .line 482
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/IntMath;->FACTORIALS:[I

    .line 530
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/IntMath;->BIGGEST_BINOMIALS:[I

    return-void

    .line 161
    :array_0
    .array-data 1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 164
    nop

    :array_1
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    .line 168
    :array_2
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    .line 482
    :array_3
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    .line 530
    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)I
    .locals 9
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 505
    const-string v1, "n"

    invoke-static {v1, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 506
    const-string v1, "k"

    invoke-static {v1, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 507
    if-gt p1, p0, :cond_2

    move v1, v4

    :goto_0
    const-string v6, "k (%s) > n (%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v1, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 508
    shr-int/lit8 v1, p0, 0x1

    if-le p1, v1, :cond_0

    .line 509
    sub-int p1, p0, p1

    .line 511
    :cond_0
    sget-object v1, Lcom/google/common/math/IntMath;->BIGGEST_BINOMIALS:[I

    array-length v1, v1

    if-ge p1, v1, :cond_1

    sget-object v1, Lcom/google/common/math/IntMath;->BIGGEST_BINOMIALS:[I

    aget v1, v1, p1

    if-le p0, v1, :cond_3

    .line 512
    :cond_1
    const v4, 0x7fffffff

    .line 525
    :goto_1
    :pswitch_0
    return v4

    :cond_2
    move v1, v5

    .line 507
    goto :goto_0

    .line 514
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 520
    const-wide/16 v2, 0x1

    .line 521
    .local v2, "result":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, p1, :cond_4

    .line 522
    sub-int v1, p0, v0

    int-to-long v4, v1

    mul-long/2addr v2, v4

    .line 523
    add-int/lit8 v1, v0, 0x1

    int-to-long v4, v1

    div-long/2addr v2, v4

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v2    # "result":J
    :pswitch_1
    move v4, p0

    .line 518
    goto :goto_1

    .line 525
    .restart local v0    # "i":I
    .restart local v2    # "result":J
    :cond_4
    long-to-int v4, v2

    goto :goto_1

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static checkedAdd(II)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 397
    int-to-long v2, p0

    int-to-long v4, p1

    add-long v0, v2, v4

    .line 398
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 399
    long-to-int v2, v0

    return v2

    .line 398
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkedMultiply(II)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 419
    int-to-long v2, p0

    int-to-long v4, p1

    mul-long v0, v2, v4

    .line 420
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 421
    long-to-int v2, v0

    return v2

    .line 420
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkedPow(II)I
    .locals 5
    .param p0, "b"    # I
    .param p1, "k"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 433
    const-string v4, "exponent"

    invoke-static {v4, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 434
    packed-switch p0, :pswitch_data_0

    .line 448
    const/4 v0, 0x1

    .line 450
    .local v0, "accum":I
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 456
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    .line 457
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    .line 459
    :cond_1
    shr-int/lit8 p1, p1, 0x1

    .line 460
    if-lez p1, :cond_0

    .line 461
    const v3, -0xb504

    if-gt v3, p0, :cond_7

    move v4, v1

    :goto_1
    const v3, 0xb504

    if-gt p0, v3, :cond_8

    move v3, v1

    :goto_2
    and-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 462
    mul-int/2addr p0, p0

    goto :goto_0

    .line 436
    .end local v0    # "accum":I
    :pswitch_0
    if-nez p1, :cond_3

    .line 454
    :cond_2
    :goto_3
    :pswitch_1
    return v1

    :cond_3
    move v1, v2

    .line 436
    goto :goto_3

    .line 440
    :pswitch_2
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    move v1, v3

    goto :goto_3

    .line 442
    :pswitch_3
    const/16 v3, 0x1f

    if-ge p1, v3, :cond_4

    move v2, v1

    :cond_4
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 443
    shl-int/2addr v1, p1

    goto :goto_3

    .line 445
    :pswitch_4
    const/16 v4, 0x20

    if-ge p1, v4, :cond_5

    move v2, v1

    :cond_5
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 446
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_6

    shl-int/2addr v1, p1

    goto :goto_3

    :cond_6
    shl-int v1, v3, p1

    goto :goto_3

    .restart local v0    # "accum":I
    :pswitch_5
    move v1, v0

    .line 452
    goto :goto_3

    .line 454
    :pswitch_6
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v1

    goto :goto_3

    :cond_7
    move v4, v2

    .line 461
    goto :goto_1

    :cond_8
    move v3, v2

    goto :goto_2

    .line 434
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 450
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static checkedSubtract(II)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 408
    int-to-long v2, p0

    int-to-long v4, p1

    sub-long v0, v2, v4

    .line 409
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 410
    long-to-int v2, v0

    return v2

    .line 409
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static divide(IILjava/math/RoundingMode;)I
    .locals 10
    .param p0, "p"    # I
    .param p1, "q"    # I
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 263
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    if-nez p1, :cond_0

    .line 265
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "/ by zero"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 267
    :cond_0
    div-int v2, p0, p1

    .line 268
    .local v2, "div":I
    mul-int v8, p1, v2

    sub-int v4, p0, v8

    .line 270
    .local v4, "rem":I
    if-nez v4, :cond_2

    .line 315
    .end local v2    # "div":I
    :cond_1
    :goto_0
    return v2

    .line 281
    .restart local v2    # "div":I
    :cond_2
    xor-int v8, p0, p1

    shr-int/lit8 v8, v8, 0x1f

    or-int/lit8 v5, v8, 0x1

    .line 283
    .local v5, "signum":I
    sget-object v8, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 313
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 285
    :pswitch_0
    if-nez v4, :cond_3

    :goto_1
    invoke-static {v6}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 288
    :pswitch_1
    const/4 v3, 0x0

    .line 315
    .local v3, "increment":Z
    :goto_2
    if-eqz v3, :cond_1

    add-int/2addr v2, v5

    goto :goto_0

    .end local v3    # "increment":Z
    :cond_3
    move v6, v7

    .line 285
    goto :goto_1

    .line 291
    :pswitch_2
    const/4 v3, 0x1

    .line 292
    .restart local v3    # "increment":Z
    goto :goto_2

    .line 294
    .end local v3    # "increment":Z
    :pswitch_3
    if-lez v5, :cond_4

    move v3, v6

    .line 295
    .restart local v3    # "increment":Z
    :goto_3
    goto :goto_2

    .end local v3    # "increment":Z
    :cond_4
    move v3, v7

    .line 294
    goto :goto_3

    .line 297
    :pswitch_4
    if-gez v5, :cond_5

    move v3, v6

    .line 298
    .restart local v3    # "increment":Z
    :goto_4
    goto :goto_2

    .end local v3    # "increment":Z
    :cond_5
    move v3, v7

    .line 297
    goto :goto_4

    .line 302
    :pswitch_5
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 303
    .local v0, "absRem":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int/2addr v8, v0

    sub-int v1, v0, v8

    .line 306
    .local v1, "cmpRemToHalfDivisor":I
    if-nez v1, :cond_a

    .line 307
    sget-object v8, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v8, :cond_6

    sget-object v8, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v8, :cond_7

    move v9, v6

    :goto_5
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_8

    move v8, v6

    :goto_6
    and-int/2addr v8, v9

    if-eqz v8, :cond_9

    :cond_6
    move v3, v6

    .restart local v3    # "increment":Z
    :goto_7
    goto :goto_2

    .end local v3    # "increment":Z
    :cond_7
    move v9, v7

    goto :goto_5

    :cond_8
    move v8, v7

    goto :goto_6

    :cond_9
    move v3, v7

    goto :goto_7

    .line 309
    :cond_a
    if-lez v1, :cond_b

    move v3, v6

    .line 311
    .restart local v3    # "increment":Z
    :goto_8
    goto :goto_2

    .end local v3    # "increment":Z
    :cond_b
    move v3, v7

    .line 309
    goto :goto_8

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static factorial(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 478
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 479
    sget-object v0, Lcom/google/common/math/IntMath;->FACTORIALS:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/math/IntMath;->FACTORIALS:[I

    aget v0, v0, p0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public static gcd(II)I
    .locals 5
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 352
    const-string v4, "a"

    invoke-static {v4, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 353
    const-string v4, "b"

    invoke-static {v4, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 354
    if-nez p0, :cond_1

    move p0, p1

    .line 388
    .end local p0    # "a":I
    :cond_0
    :goto_0
    return p0

    .line 358
    .restart local p0    # "a":I
    :cond_1
    if-eqz p1, :cond_0

    .line 365
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 366
    .local v0, "aTwos":I
    shr-int/2addr p0, v0

    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    .line 368
    .local v1, "bTwos":I
    shr-int/2addr p1, v1

    .line 369
    :goto_1
    if-eq p0, p1, :cond_2

    .line 377
    sub-int v2, p0, p1

    .line 379
    .local v2, "delta":I
    shr-int/lit8 v4, v2, 0x1f

    and-int v3, v2, v4

    .line 382
    .local v3, "minDeltaOrZero":I
    sub-int v4, v2, v3

    sub-int p0, v4, v3

    .line 385
    add-int/2addr p1, v3

    .line 386
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shr-int/2addr p0, v4

    .line 387
    goto :goto_1

    .line 388
    .end local v2    # "delta":I
    .end local v3    # "minDeltaOrZero":I
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    shl-int/2addr p0, v4

    goto :goto_0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 4
    .param p0, "x"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    if-lez p0, :cond_0

    move v2, v0

    :goto_0
    add-int/lit8 v3, p0, -0x1

    and-int/2addr v3, p0

    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static log10(ILjava/math/RoundingMode;)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .prologue
    .line 118
    const-string v2, "x"

    invoke-static {v2, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 119
    invoke-static {p0}, Lcom/google/common/math/IntMath;->log10Floor(I)I

    move-result v1

    .line 120
    .local v1, "logFloor":I
    sget-object v2, Lcom/google/common/math/IntMath;->POWERS_OF_10:[I

    aget v0, v2, v1

    .line 121
    .local v0, "floorPow":I
    sget-object v2, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 137
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 123
    :pswitch_0
    if-ne p0, v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 135
    .end local v1    # "logFloor":I
    :cond_0
    :goto_1
    :pswitch_1
    return v1

    .line 123
    .restart local v1    # "logFloor":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 130
    :pswitch_2
    if-eq p0, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    :pswitch_3
    sget-object v2, Lcom/google/common/math/IntMath;->HALF_POWERS_OF_10:[I

    aget v2, v2, v1

    if-le p0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static log10Floor(I)I
    .locals 4
    .param p0, "x"    # I

    .prologue
    .line 149
    sget-object v2, Lcom/google/common/math/IntMath;->MAX_LOG10_FOR_LEADING_ZEROS:[B

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    aget-byte v1, v2, v3

    .line 152
    .local v1, "y":I
    sget-object v2, Lcom/google/common/math/IntMath;->POWERS_OF_10:[I

    aget v2, v2, v1

    sub-int v2, p0, v2

    ushr-int/lit8 v0, v2, 0x1f

    .line 157
    .local v0, "sgn":I
    sub-int v2, v1, v0

    return v2
.end method

.method public static log2(ILjava/math/RoundingMode;)I
    .locals 5
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;

    .prologue
    .line 77
    const-string v3, "x"

    invoke-static {v3, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 78
    sget-object v3, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 101
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 80
    :pswitch_0
    invoke-static {p0}, Lcom/google/common/math/IntMath;->isPowerOfTwo(I)Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 84
    :pswitch_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v2, v3, 0x1f

    .line 98
    :cond_0
    :goto_0
    return v2

    .line 88
    :pswitch_2
    add-int/lit8 v3, p0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v2, v3, 0x20

    goto :goto_0

    .line 94
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    .line 95
    .local v1, "leadingZeros":I
    const v3, -0x4afb0ccd

    ushr-int v0, v3, v1

    .line 97
    .local v0, "cmp":I
    rsub-int/lit8 v2, v1, 0x1f

    .line 98
    .local v2, "logFloor":I
    if-le p0, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static mod(II)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "m"    # I

    .prologue
    .line 333
    if-gtz p1, :cond_0

    .line 334
    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modulus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_0
    rem-int v0, p0, p1

    .line 337
    .local v0, "result":I
    if-ltz v0, :cond_1

    .end local v0    # "result":I
    :goto_0
    return v0

    .restart local v0    # "result":I
    :cond_1
    add-int/2addr v0, p1

    goto :goto_0
.end method

.method public static pow(II)I
    .locals 5
    .param p0, "b"    # I
    .param p1, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "failing tests"
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 182
    const-string v3, "exponent"

    invoke-static {v3, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 183
    packed-switch p0, :pswitch_data_0

    .line 199
    const/4 v0, 0x1

    .line 200
    .local v0, "accum":I
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 206
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_5

    move v2, v1

    :goto_1
    mul-int/2addr v0, v2

    .line 207
    mul-int/2addr p0, p0

    .line 199
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "accum":I
    :pswitch_0
    if-nez p1, :cond_1

    .line 204
    :cond_0
    :goto_2
    :pswitch_1
    return v1

    :cond_1
    move v1, v2

    .line 185
    goto :goto_2

    .line 189
    :pswitch_2
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    const/4 v1, -0x1

    goto :goto_2

    .line 191
    :pswitch_3
    if-ge p1, v4, :cond_2

    shl-int v2, v1, p1

    :cond_2
    move v1, v2

    goto :goto_2

    .line 193
    :pswitch_4
    if-ge p1, v4, :cond_4

    .line 194
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_3

    shl-int/2addr v1, p1

    goto :goto_2

    :cond_3
    shl-int/2addr v1, p1

    neg-int v1, v1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 196
    goto :goto_2

    .restart local v0    # "accum":I
    :pswitch_5
    move v1, v0

    .line 202
    goto :goto_2

    .line 204
    :pswitch_6
    mul-int v1, p0, v0

    goto :goto_2

    :cond_5
    move v2, p0

    .line 206
    goto :goto_1

    .line 183
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 200
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static sqrt(ILjava/math/RoundingMode;)I
    .locals 6
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 222
    const-string v4, "x"

    invoke-static {v4, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 223
    invoke-static {p0}, Lcom/google/common/math/IntMath;->sqrtFloor(I)I

    move-result v1

    .line 224
    .local v1, "sqrtFloor":I
    sget-object v4, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 244
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 226
    :pswitch_0
    mul-int v4, v1, v1

    if-ne v4, p0, :cond_1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 242
    .end local v1    # "sqrtFloor":I
    :cond_0
    :goto_1
    :pswitch_1
    return v1

    .restart local v1    # "sqrtFloor":I
    :cond_1
    move v2, v3

    .line 226
    goto :goto_0

    .line 232
    :pswitch_2
    mul-int v2, v1, v1

    if-eq v2, p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 236
    :pswitch_3
    mul-int v4, v1, v1

    add-int v0, v4, v1

    .line 242
    .local v0, "halfSquare":I
    if-gt p0, v0, :cond_2

    move v4, v2

    :goto_2
    if-gez v0, :cond_3

    :goto_3
    or-int/2addr v2, v4

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static sqrtFloor(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 251
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
