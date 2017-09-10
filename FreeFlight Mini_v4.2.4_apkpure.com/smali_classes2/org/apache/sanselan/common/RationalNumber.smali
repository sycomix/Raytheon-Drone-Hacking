.class public Lorg/apache/sanselan/common/RationalNumber;
.super Ljava/lang/Number;
.source "RationalNumber.java"


# static fields
.field private static final nf:Ljava/text/NumberFormat;

.field private static final serialVersionUID:J = -0x1L


# instance fields
.field public final divisor:I

.field public final numerator:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Ljava/text/DecimalFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/sanselan/common/RationalNumber;->nf:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "numerator"    # I
    .param p2, "divisor"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 31
    iput p1, p0, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    .line 32
    iput p2, p0, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    .line 33
    return-void
.end method

.method public static final factoryMethod(JJ)Lorg/apache/sanselan/common/RationalNumber;
    .locals 12
    .param p0, "n"    # J
    .param p2, "d"    # J

    .prologue
    const-wide/16 v10, 0x1

    const/4 v8, 0x1

    const-wide/32 v6, 0x7fffffff

    const-wide/32 v4, -0x80000000

    .line 40
    cmp-long v2, p0, v6

    if-gtz v2, :cond_0

    cmp-long v2, p0, v4

    if-ltz v2, :cond_0

    cmp-long v2, p2, v6

    if-gtz v2, :cond_0

    cmp-long v2, p2, v4

    if-gez v2, :cond_3

    .line 45
    :cond_0
    :goto_0
    cmp-long v2, p0, v6

    if-gtz v2, :cond_1

    cmp-long v2, p0, v4

    if-ltz v2, :cond_1

    cmp-long v2, p2, v6

    if-gtz v2, :cond_1

    cmp-long v2, p2, v4

    if-gez v2, :cond_2

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_2

    .line 49
    shr-long/2addr p0, v8

    .line 50
    shr-long/2addr p2, v8

    goto :goto_0

    .line 53
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_3

    .line 54
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid value, numerator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", divisor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_3
    invoke-static {p0, p1, p2, p3}, Lorg/apache/sanselan/common/RationalNumber;->gcd(JJ)J

    move-result-wide v0

    .line 59
    .local v0, "gcd":J
    div-long/2addr p2, v0

    .line 60
    div-long/2addr p0, v0

    .line 62
    new-instance v2, Lorg/apache/sanselan/common/RationalNumber;

    long-to-int v3, p0

    long-to-int v4, p2

    invoke-direct {v2, v3, v4}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    return-object v2
.end method

.method private static gcd(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 71
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 74
    .end local p0    # "a":J
    :goto_0
    return-wide p0

    .restart local p0    # "a":J
    :cond_0
    rem-long v0, p0, p2

    invoke-static {p2, p3, v0, v1}, Lorg/apache/sanselan/common/RationalNumber;->gcd(JJ)J

    move-result-wide p0

    goto :goto_0
.end method


# virtual methods
.method public doubleValue()D
    .locals 4

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    int-to-double v0, v0

    iget v2, p0, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    iget v1, p0, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    div-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longValue()J
    .locals 4

    .prologue
    .line 99
    iget v0, p0, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    int-to-long v0, v0

    iget v2, p0, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public negate()Lorg/apache/sanselan/common/RationalNumber;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lorg/apache/sanselan/common/RationalNumber;

    iget v1, p0, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    neg-int v1, v1

    iget v2, p0, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    return-object v0
.end method

.method public toDisplayString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 121
    iget v1, p0, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    iget v2, p0, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    iget v3, p0, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    .line 123
    :cond_0
    invoke-static {}, Ljava/text/DecimalFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 124
    .local v0, "nf":Ljava/text/NumberFormat;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 125
    iget v1, p0, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    int-to-double v2, v1

    iget v1, p0, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 111
    iget v0, p0, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Invalid rational ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 113
    :cond_0
    iget v0, p0, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    iget v1, p0, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 114
    sget-object v0, Lorg/apache/sanselan/common/RationalNumber;->nf:Ljava/text/NumberFormat;

    iget v1, p0, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    iget v2, p0, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    div-int/2addr v1, v2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/apache/sanselan/common/RationalNumber;->nf:Ljava/text/NumberFormat;

    iget v2, p0, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    int-to-double v2, v2

    iget v4, p0, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
