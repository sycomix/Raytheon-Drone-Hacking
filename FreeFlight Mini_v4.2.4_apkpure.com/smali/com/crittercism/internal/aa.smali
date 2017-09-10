.class public abstract Lcom/crittercism/internal/aa;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/crittercism/internal/ah;

.field b:Lcom/crittercism/internal/ab;

.field protected c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/aa;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget-object v0, p1, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    iget v1, p1, Lcom/crittercism/internal/aa;->c:I

    invoke-direct {p0, v0, v1}, Lcom/crittercism/internal/aa;->a(Lcom/crittercism/internal/ah;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/crittercism/internal/ah;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/crittercism/internal/aa;->a(Lcom/crittercism/internal/ah;I)V

    .line 27
    return-void
.end method

.method private a(Lcom/crittercism/internal/ah;I)V
    .locals 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 35
    invoke-virtual {p0}, Lcom/crittercism/internal/aa;->e()I

    move-result v0

    iput v0, p0, Lcom/crittercism/internal/aa;->d:I

    .line 36
    new-instance v0, Lcom/crittercism/internal/ab;

    invoke-virtual {p0}, Lcom/crittercism/internal/aa;->d()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/crittercism/internal/ab;-><init>(I)V

    iput-object v0, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    .line 37
    iput p2, p0, Lcom/crittercism/internal/aa;->c:I

    .line 38
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 161
    .line 3130
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 161
    sget-object v1, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    .line 162
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/crittercism/internal/aa;->c:I

    return v0
.end method

.method public final a([BII)V
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lcom/crittercism/internal/aa;->b([BII)I

    move-result v0

    .line 93
    :goto_0
    if-lez v0, :cond_0

    if-ge v0, p3, :cond_0

    .line 94
    iget-object v1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-interface {v1}, Lcom/crittercism/internal/ah;->a()Lcom/crittercism/internal/aa;

    move-result-object v1

    .line 95
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Lcom/crittercism/internal/aa;->b([BII)I

    move-result v1

    .line 97
    if-lez v1, :cond_0

    .line 102
    add-int/2addr v0, v1

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/crittercism/internal/aa;->g()V

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    iget v2, p0, Lcom/crittercism/internal/aa;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/crittercism/internal/aa;->c:I

    .line 58
    int-to-char v2, p1

    .line 59
    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 60
    iget-object v2, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    invoke-virtual {p0, v2}, Lcom/crittercism/internal/aa;->a(Lcom/crittercism/internal/ab;)Z

    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    invoke-virtual {p0}, Lcom/crittercism/internal/aa;->b()Lcom/crittercism/internal/aa;

    move-result-object v2

    .line 76
    :goto_1
    if-eq v2, p0, :cond_2

    .line 77
    iget-object v3, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-interface {v3, v2}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    .line 80
    :cond_2
    if-ne v2, p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 65
    :cond_3
    sget-object v2, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    goto :goto_1

    .line 67
    :cond_4
    iget-object v3, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    .line 1101
    iget v3, v3, Lcom/crittercism/internal/ab;->b:I

    .line 67
    iget v4, p0, Lcom/crittercism/internal/aa;->d:I

    if-ge v3, v4, :cond_6

    .line 68
    iget-object v3, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    .line 2065
    iget v4, v3, Lcom/crittercism/internal/ab;->b:I

    add-int/lit8 v4, v4, 0x1

    .line 2066
    iget-object v5, v3, Lcom/crittercism/internal/ab;->a:[C

    array-length v5, v5

    if-le v4, v5, :cond_5

    .line 3048
    iget-object v5, v3, Lcom/crittercism/internal/ab;->a:[C

    array-length v5, v5

    shl-int/lit8 v5, v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v5, v5, [C

    .line 3049
    iget-object v6, v3, Lcom/crittercism/internal/ab;->a:[C

    iget v7, v3, Lcom/crittercism/internal/ab;->b:I

    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3050
    iput-object v5, v3, Lcom/crittercism/internal/ab;->a:[C

    .line 2069
    :cond_5
    iget-object v5, v3, Lcom/crittercism/internal/ab;->a:[C

    iget v6, v3, Lcom/crittercism/internal/ab;->b:I

    aput-char v2, v5, v6

    .line 2070
    iput v4, v3, Lcom/crittercism/internal/ab;->b:I

    move-object v2, p0

    .line 69
    goto :goto_1

    .line 71
    :cond_6
    invoke-virtual {p0}, Lcom/crittercism/internal/aa;->c()Lcom/crittercism/internal/aa;

    move-result-object v2

    goto :goto_1
.end method

.method public abstract a(Lcom/crittercism/internal/ab;)Z
.end method

.method protected b([BII)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 108
    if-ne p3, v0, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/crittercism/internal/aa;->g()V

    .line 126
    :cond_0
    return v0

    .line 114
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    move v0, v1

    .line 120
    :goto_0
    if-nez v1, :cond_0

    if-ge v0, p3, :cond_0

    .line 121
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    int-to-char v1, v1

    .line 122
    invoke-virtual {p0, v1}, Lcom/crittercism/internal/aa;->a(I)Z

    move-result v1

    .line 123
    add-int/lit8 v0, v0, 0x1

    .line 124
    goto :goto_0
.end method

.method public abstract b()Lcom/crittercism/internal/aa;
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 142
    iput p1, p0, Lcom/crittercism/internal/aa;->c:I

    .line 143
    return-void
.end method

.method public abstract c()Lcom/crittercism/internal/aa;
.end method

.method protected abstract d()I
.end method

.method protected abstract e()I
.end method

.method public f()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    sget-object v1, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    .line 190
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    invoke-virtual {v0}, Lcom/crittercism/internal/ab;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
