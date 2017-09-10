.class public final Lcom/google/common/math/DoubleMath;
.super Ljava/lang/Object;
.source "DoubleMath.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/DoubleMath$1;
    }
.end annotation


# static fields
.field static final EVERY_SIXTEENTH_FACTORIAL:[D
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final LN_2:D

.field static final MAX_FACTORIAL:I = 0xaa
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_INT_AS_DOUBLE:D = 2.147483647E9

.field private static final MAX_LONG_AS_DOUBLE_PLUS_ONE:D = 9.223372036854776E18

.field private static final MIN_INT_AS_DOUBLE:D = -2.147483648E9

.field private static final MIN_LONG_AS_DOUBLE:D = -9.223372036854776E18


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 212
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleMath;->LN_2:D

    .line 303
    const/16 v0, 0xb

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/DoubleMath;->EVERY_SIXTEENTH_FACTORIAL:[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x42b3077775800000L    # 2.0922789888E13
        0x474956ad0aae33a4L    # 2.631308369336935E35
        0x4c9ee69a78d72cb6L    # 1.2413915592536073E61
        0x526fe478ee34844aL    # 1.2688693218588417E89
        0x589c619094edabffL    # 7.156945704626381E118
        0x5f13638dd7bd6347L    # 9.916779348709496E149
        0x65c7cac197cfe503L    # 1.974506857221074E182
        0x6cb1e5dfc140e1e5L    # 3.856204823625804E215
        0x73c8ce85fadb707eL    # 5.5502938327393044E249
        0x7b095d5f3d928edeL    # 4.7147236359920616E284
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static factorial(I)D
    .locals 6
    .param p0, "n"    # I

    .prologue
    .line 285
    const-string v3, "n"

    invoke-static {v3, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 286
    const/16 v3, 0xaa

    if-le p0, v3, :cond_0

    .line 287
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 295
    :goto_0
    return-wide v4

    .line 291
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 292
    .local v0, "accum":D
    and-int/lit8 v3, p0, -0x10

    add-int/lit8 v2, v3, 0x1

    .local v2, "i":I
    :goto_1
    if-gt v2, p0, :cond_1

    .line 293
    int-to-double v4, v2

    mul-double/2addr v0, v4

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 295
    :cond_1
    sget-object v3, Lcom/google/common/math/DoubleMath;->EVERY_SIXTEENTH_FACTORIAL:[D

    shr-int/lit8 v4, p0, 0x4

    aget-wide v4, v3, v4

    mul-double/2addr v4, v0

    goto :goto_0
.end method

.method public static fuzzyCompare(DDD)I
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "tolerance"    # D
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 367
    invoke-static/range {p0 .. p5}, Lcom/google/common/math/DoubleMath;->fuzzyEquals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const/4 v0, 0x0

    .line 374
    :goto_0
    return v0

    .line 369
    :cond_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1

    .line 370
    const/4 v0, -0x1

    goto :goto_0

    .line 371
    :cond_1
    cmpl-double v0, p0, p2

    if-lez v0, :cond_2

    .line 372
    const/4 v0, 0x1

    goto :goto_0

    .line 374
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v0

    goto :goto_0
.end method

.method public static fuzzyEquals(DDD)Z
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "tolerance"    # D
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 343
    const-string v0, "tolerance"

    invoke-static {v0, p4, p5}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;D)D

    .line 344
    sub-double v0, p0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-lez v0, :cond_0

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p0

    if-eqz v0, :cond_1

    cmpl-double v0, p2, p2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMathematicalInteger(D)Z
    .locals 2
    .param p0, "x"    # D

    .prologue
    .line 270
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x34

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPowerOfTwo(D)Z
    .locals 2
    .param p0, "x"    # D

    .prologue
    .line 190
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log2(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 209
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/google/common/math/DoubleMath;->LN_2:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static log2(DLjava/math/RoundingMode;)I
    .locals 12
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 225
    const-wide/16 v8, 0x0

    cmpl-double v4, p0, v8

    if-lez v4, :cond_1

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    const-string v7, "x must be positive and finite"

    invoke-static {v4, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 226
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 227
    .local v0, "exponent":I
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isNormal(D)Z

    move-result v4

    if-nez v4, :cond_2

    .line 228
    const-wide/high16 v4, 0x4330000000000000L    # 4.503599627370496E15

    mul-double/2addr v4, p0

    invoke-static {v4, v5, p2}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result v4

    add-int/lit8 v0, v4, -0x34

    .line 260
    .end local v0    # "exponent":I
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v4, v6

    .line 225
    goto :goto_0

    .line 233
    .restart local v0    # "exponent":I
    :cond_2
    sget-object v4, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 258
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 235
    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 238
    :pswitch_1
    const/4 v1, 0x0

    .line 260
    .local v1, "increment":Z
    :goto_2
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 241
    .end local v1    # "increment":Z
    :pswitch_2
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v5

    .line 242
    .restart local v1    # "increment":Z
    :goto_3
    goto :goto_2

    .end local v1    # "increment":Z
    :cond_3
    move v1, v6

    .line 241
    goto :goto_3

    .line 244
    :pswitch_3
    if-gez v0, :cond_4

    move v4, v5

    :goto_4
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v7

    if-nez v7, :cond_5

    :goto_5
    and-int v1, v4, v5

    .line 245
    .restart local v1    # "increment":Z
    goto :goto_2

    .end local v1    # "increment":Z
    :cond_4
    move v4, v6

    .line 244
    goto :goto_4

    :cond_5
    move v5, v6

    goto :goto_5

    .line 247
    :pswitch_4
    if-ltz v0, :cond_6

    move v4, v5

    :goto_6
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v7

    if-nez v7, :cond_7

    :goto_7
    and-int v1, v4, v5

    .line 248
    .restart local v1    # "increment":Z
    goto :goto_2

    .end local v1    # "increment":Z
    :cond_6
    move v4, v6

    .line 247
    goto :goto_6

    :cond_7
    move v5, v6

    goto :goto_7

    .line 252
    :pswitch_5
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->scaleNormalize(D)D

    move-result-wide v2

    .line 255
    .local v2, "xScaled":D
    mul-double v8, v2, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    cmpl-double v4, v8, v10

    if-lez v4, :cond_8

    move v1, v5

    .line 256
    .restart local v1    # "increment":Z
    :goto_8
    goto :goto_2

    .end local v1    # "increment":Z
    :cond_8
    move v1, v6

    .line 255
    goto :goto_8

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static roundIntermediate(DLjava/math/RoundingMode;)D
    .locals 10
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    const-wide/16 v8, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 55
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "input is infinite or NaN"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_0
    sget-object v2, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 109
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 60
    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 104
    .end local p0    # "x":D
    :cond_1
    :goto_0
    :pswitch_1
    return-wide p0

    .line 64
    .restart local p0    # "x":D
    :pswitch_2
    cmpl-double v2, p0, v8

    if-gez v2, :cond_1

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    sub-double/2addr p0, v6

    goto :goto_0

    .line 71
    :pswitch_3
    cmpg-double v2, p0, v8

    if-lez v2, :cond_1

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    add-double/2addr p0, v6

    goto :goto_0

    .line 81
    :pswitch_4
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    invoke-static {v6, v7, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    add-double/2addr p0, v2

    goto :goto_0

    .line 88
    :pswitch_5
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    goto :goto_0

    .line 91
    :pswitch_6
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    .line 92
    .local v0, "z":D
    sub-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    .line 93
    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    add-double/2addr p0, v2

    goto :goto_0

    :cond_2
    move-wide p0, v0

    .line 95
    goto :goto_0

    .line 100
    .end local v0    # "z":D
    :pswitch_7
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    .line 101
    .restart local v0    # "z":D
    sub-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    move-wide p0, v0

    .line 104
    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 10
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 175
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide p0

    .line 176
    const-wide/high16 v6, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v6, p0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    move v6, v4

    :goto_0
    const-wide/high16 v8, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v7, p0, v8

    if-gez v7, :cond_2

    :goto_1
    and-int/2addr v4, v6

    if-eqz v4, :cond_3

    .line 177
    double-to-long v4, p0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 182
    :cond_0
    :goto_2
    return-object v1

    :cond_1
    move v6, v5

    .line 176
    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 179
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 180
    .local v0, "exponent":I
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v2

    .line 181
    .local v2, "significand":J
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    add-int/lit8 v5, v0, -0x34

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 182
    .local v1, "result":Ljava/math/BigInteger;
    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_0

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_2
.end method

.method public static roundToInt(DLjava/math/RoundingMode;)I
    .locals 8
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 128
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    .line 129
    .local v0, "z":D
    const-wide v4, -0x3e1fffffffe00000L    # -2.147483649E9

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    move v4, v2

    :goto_0
    const-wide/high16 v6, 0x41e0000000000000L    # 2.147483648E9

    cmpg-double v5, v0, v6

    if-gez v5, :cond_1

    :goto_1
    and-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    .line 130
    double-to-int v2, v0

    return v2

    :cond_0
    move v4, v3

    .line 129
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static roundToLong(DLjava/math/RoundingMode;)J
    .locals 8
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 151
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    .line 152
    .local v0, "z":D
    const-wide/high16 v4, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    move v4, v2

    :goto_0
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v5, v0, v6

    if-gez v5, :cond_1

    :goto_1
    and-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    .line 153
    double-to-long v2, v0

    return-wide v2

    :cond_0
    move v4, v3

    .line 152
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method
