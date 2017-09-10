.class public abstract Lorg/apache/sanselan/common/RationalNumberUtilities;
.super Ljava/lang/Number;
.source "RationalNumberUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/common/RationalNumberUtilities$Option;
    }
.end annotation


# static fields
.field private static final TOLERANCE:D = 1.0E-8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 22
    return-void
.end method

.method public static final getRationalNumber(D)Lorg/apache/sanselan/common/RationalNumber;
    .locals 20
    .param p0, "value"    # D

    .prologue
    .line 55
    const-wide v14, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v13, p0, v14

    if-ltz v13, :cond_0

    .line 56
    new-instance v13, Lorg/apache/sanselan/common/RationalNumber;

    const v14, 0x7fffffff

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    .line 142
    :goto_0
    return-object v13

    .line 57
    :cond_0
    const-wide v14, -0x3e20000000400000L    # -2.147483647E9

    cmpg-double v13, p0, v14

    if-gtz v13, :cond_1

    .line 58
    new-instance v13, Lorg/apache/sanselan/common/RationalNumber;

    const v14, -0x7fffffff

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    goto :goto_0

    .line 60
    :cond_1
    const/4 v12, 0x0

    .line 61
    .local v12, "negative":Z
    const-wide/16 v14, 0x0

    cmpg-double v13, p0, v14

    if-gez v13, :cond_2

    .line 63
    const/4 v12, 0x1

    .line 64
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 72
    :cond_2
    const-wide/16 v14, 0x0

    cmpl-double v13, p0, v14

    if-nez v13, :cond_3

    .line 73
    new-instance v13, Lorg/apache/sanselan/common/RationalNumber;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    goto :goto_0

    .line 74
    :cond_3
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v13, p0, v14

    if-ltz v13, :cond_6

    .line 76
    move-wide/from16 v0, p0

    double-to-int v3, v0

    .line 77
    .local v3, "approx":I
    int-to-double v14, v3

    cmpg-double v13, v14, p0

    if-gez v13, :cond_5

    .line 79
    new-instance v8, Lorg/apache/sanselan/common/RationalNumber;

    const/4 v13, 0x1

    invoke-direct {v8, v3, v13}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    .line 80
    .local v8, "l":Lorg/apache/sanselan/common/RationalNumber;
    new-instance v6, Lorg/apache/sanselan/common/RationalNumber;

    add-int/lit8 v13, v3, 0x1

    const/4 v14, 0x1

    invoke-direct {v6, v13, v14}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    .line 102
    .local v6, "h":Lorg/apache/sanselan/common/RationalNumber;
    :goto_1
    move-wide/from16 v0, p0

    invoke-static {v8, v0, v1}, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->factory(Lorg/apache/sanselan/common/RationalNumber;D)Lorg/apache/sanselan/common/RationalNumberUtilities$Option;

    move-result-object v9

    .line 103
    .local v9, "low":Lorg/apache/sanselan/common/RationalNumberUtilities$Option;
    move-wide/from16 v0, p0

    invoke-static {v6, v0, v1}, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->factory(Lorg/apache/sanselan/common/RationalNumber;D)Lorg/apache/sanselan/common/RationalNumberUtilities$Option;

    move-result-object v7

    .line 106
    .local v7, "high":Lorg/apache/sanselan/common/RationalNumberUtilities$Option;
    iget-wide v14, v9, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    iget-wide v0, v7, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    move-wide/from16 v16, v0

    cmpg-double v13, v14, v16

    if-gez v13, :cond_8

    move-object v4, v9

    .line 108
    .local v4, "bestOption":Lorg/apache/sanselan/common/RationalNumberUtilities$Option;
    :goto_2
    const/16 v2, 0x64

    .line 109
    .local v2, "MAX_ITERATIONS":I
    const/4 v5, 0x0

    .line 110
    .local v5, "count":I
    :goto_3
    iget-wide v14, v4, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    const-wide v16, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v13, v14, v16

    if-lez v13, :cond_4

    const/16 v13, 0x64

    if-ge v5, v13, :cond_4

    .line 116
    iget-object v13, v9, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->rationalNumber:Lorg/apache/sanselan/common/RationalNumber;

    iget v13, v13, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    int-to-long v14, v13

    iget-object v13, v7, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->rationalNumber:Lorg/apache/sanselan/common/RationalNumber;

    iget v13, v13, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    iget-object v13, v9, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->rationalNumber:Lorg/apache/sanselan/common/RationalNumber;

    iget v13, v13, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    iget-object v13, v7, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->rationalNumber:Lorg/apache/sanselan/common/RationalNumber;

    iget v13, v13, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    int-to-long v0, v13

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    invoke-static/range {v14 .. v17}, Lorg/apache/sanselan/common/RationalNumber;->factoryMethod(JJ)Lorg/apache/sanselan/common/RationalNumber;

    move-result-object v10

    .line 121
    .local v10, "mediant":Lorg/apache/sanselan/common/RationalNumber;
    move-wide/from16 v0, p0

    invoke-static {v10, v0, v1}, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->factory(Lorg/apache/sanselan/common/RationalNumber;D)Lorg/apache/sanselan/common/RationalNumberUtilities$Option;

    move-result-object v11

    .line 123
    .local v11, "mediantOption":Lorg/apache/sanselan/common/RationalNumberUtilities$Option;
    invoke-virtual {v10}, Lorg/apache/sanselan/common/RationalNumber;->doubleValue()D

    move-result-wide v14

    cmpg-double v13, p0, v14

    if-gez v13, :cond_b

    .line 125
    iget-wide v14, v7, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    iget-wide v0, v11, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    move-wide/from16 v16, v0

    cmpg-double v13, v14, v16

    if-gtz v13, :cond_9

    .line 142
    .end local v10    # "mediant":Lorg/apache/sanselan/common/RationalNumber;
    .end local v11    # "mediantOption":Lorg/apache/sanselan/common/RationalNumberUtilities$Option;
    :cond_4
    if-eqz v12, :cond_c

    iget-object v13, v4, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->rationalNumber:Lorg/apache/sanselan/common/RationalNumber;

    invoke-virtual {v13}, Lorg/apache/sanselan/common/RationalNumber;->negate()Lorg/apache/sanselan/common/RationalNumber;

    move-result-object v13

    goto/16 :goto_0

    .line 84
    .end local v2    # "MAX_ITERATIONS":I
    .end local v4    # "bestOption":Lorg/apache/sanselan/common/RationalNumberUtilities$Option;
    .end local v5    # "count":I
    .end local v6    # "h":Lorg/apache/sanselan/common/RationalNumber;
    .end local v7    # "high":Lorg/apache/sanselan/common/RationalNumberUtilities$Option;
    .end local v8    # "l":Lorg/apache/sanselan/common/RationalNumber;
    .end local v9    # "low":Lorg/apache/sanselan/common/RationalNumberUtilities$Option;
    :cond_5
    new-instance v8, Lorg/apache/sanselan/common/RationalNumber;

    add-int/lit8 v13, v3, -0x1

    const/4 v14, 0x1

    invoke-direct {v8, v13, v14}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    .line 85
    .restart local v8    # "l":Lorg/apache/sanselan/common/RationalNumber;
    new-instance v6, Lorg/apache/sanselan/common/RationalNumber;

    const/4 v13, 0x1

    invoke-direct {v6, v3, v13}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    .restart local v6    # "h":Lorg/apache/sanselan/common/RationalNumber;
    goto :goto_1

    .line 90
    .end local v3    # "approx":I
    .end local v6    # "h":Lorg/apache/sanselan/common/RationalNumber;
    .end local v8    # "l":Lorg/apache/sanselan/common/RationalNumber;
    :cond_6
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v14, v14, p0

    double-to-int v3, v14

    .line 91
    .restart local v3    # "approx":I
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v3

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    cmpg-double v13, v14, p0

    if-gez v13, :cond_7

    .line 93
    new-instance v8, Lorg/apache/sanselan/common/RationalNumber;

    const/4 v13, 0x1

    invoke-direct {v8, v13, v3}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    .line 94
    .restart local v8    # "l":Lorg/apache/sanselan/common/RationalNumber;
    new-instance v6, Lorg/apache/sanselan/common/RationalNumber;

    const/4 v13, 0x1

    add-int/lit8 v14, v3, -0x1

    invoke-direct {v6, v13, v14}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    .restart local v6    # "h":Lorg/apache/sanselan/common/RationalNumber;
    goto/16 :goto_1

    .line 98
    .end local v6    # "h":Lorg/apache/sanselan/common/RationalNumber;
    .end local v8    # "l":Lorg/apache/sanselan/common/RationalNumber;
    :cond_7
    new-instance v8, Lorg/apache/sanselan/common/RationalNumber;

    const/4 v13, 0x1

    add-int/lit8 v14, v3, 0x1

    invoke-direct {v8, v13, v14}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    .line 99
    .restart local v8    # "l":Lorg/apache/sanselan/common/RationalNumber;
    new-instance v6, Lorg/apache/sanselan/common/RationalNumber;

    const/4 v13, 0x1

    invoke-direct {v6, v13, v3}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    .restart local v6    # "h":Lorg/apache/sanselan/common/RationalNumber;
    goto/16 :goto_1

    .restart local v7    # "high":Lorg/apache/sanselan/common/RationalNumberUtilities$Option;
    .restart local v9    # "low":Lorg/apache/sanselan/common/RationalNumberUtilities$Option;
    :cond_8
    move-object v4, v7

    .line 106
    goto/16 :goto_2

    .line 128
    .restart local v2    # "MAX_ITERATIONS":I
    .restart local v4    # "bestOption":Lorg/apache/sanselan/common/RationalNumberUtilities$Option;
    .restart local v5    # "count":I
    .restart local v10    # "mediant":Lorg/apache/sanselan/common/RationalNumber;
    .restart local v11    # "mediantOption":Lorg/apache/sanselan/common/RationalNumberUtilities$Option;
    :cond_9
    move-object v7, v11

    .line 138
    :goto_4
    iget-wide v14, v11, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    iget-wide v0, v4, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    move-wide/from16 v16, v0

    cmpg-double v13, v14, v16

    if-gez v13, :cond_a

    .line 139
    move-object v4, v11

    .line 110
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 132
    :cond_b
    iget-wide v14, v9, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    iget-wide v0, v11, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    move-wide/from16 v16, v0

    cmpg-double v13, v14, v16

    if-lez v13, :cond_4

    .line 135
    move-object v9, v11

    goto :goto_4

    .line 142
    .end local v10    # "mediant":Lorg/apache/sanselan/common/RationalNumber;
    .end local v11    # "mediantOption":Lorg/apache/sanselan/common/RationalNumberUtilities$Option;
    :cond_c
    iget-object v13, v4, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->rationalNumber:Lorg/apache/sanselan/common/RationalNumber;

    goto/16 :goto_0
.end method
