.class public abstract Ljavax/mail/search/IntegerComparisonTerm;
.super Ljavax/mail/search/ComparisonTerm;
.source "IntegerComparisonTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x60a39325f9860814L


# instance fields
.field protected number:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0
    .param p1, "comparison"    # I
    .param p2, "number"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljavax/mail/search/ComparisonTerm;-><init>()V

    .line 47
    iput p1, p0, Ljavax/mail/search/IntegerComparisonTerm;->comparison:I

    .line 48
    iput p2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 88
    instance-of v2, p1, Ljavax/mail/search/IntegerComparisonTerm;

    if-nez v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 90
    check-cast v0, Ljavax/mail/search/IntegerComparisonTerm;

    .line 91
    .local v0, "ict":Ljavax/mail/search/IntegerComparisonTerm;
    iget v2, v0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    iget v3, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ne v2, v3, :cond_0

    invoke-super {p0, p1}, Ljavax/mail/search/ComparisonTerm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getComparison()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->comparison:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    invoke-super {p0}, Ljavax/mail/search/ComparisonTerm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected match(I)Z
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->comparison:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 68
    :pswitch_0
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-le p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 70
    :pswitch_1
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-lt p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 72
    :pswitch_2
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 74
    :pswitch_3
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ne p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 76
    :pswitch_4
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-gt p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 78
    :pswitch_5
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ge p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
