.class public final Lcom/crittercism/internal/af;
.super Lcom/crittercism/internal/aa;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/aa;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/crittercism/internal/aa;-><init>(Lcom/crittercism/internal/aa;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 2

    .prologue
    .line 27
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 28
    invoke-virtual {p0}, Lcom/crittercism/internal/af;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->b(I)V

    .line 2130
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 29
    sget-object v1, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    .line 30
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    .line 33
    :cond_0
    iget v0, p0, Lcom/crittercism/internal/af;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/crittercism/internal/af;->c:I

    .line 34
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/crittercism/internal/ab;)Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public final b([BII)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 47
    if-ne p3, v0, :cond_0

    .line 3130
    iget-object v1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 49
    invoke-virtual {p0}, Lcom/crittercism/internal/af;->a()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/crittercism/internal/ah;->b(I)V

    .line 4130
    iget-object v1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 50
    sget-object v2, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v1, v2}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    move p3, v0

    .line 55
    :goto_0
    return p3

    .line 54
    :cond_0
    iget v0, p0, Lcom/crittercism/internal/af;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/crittercism/internal/af;->c:I

    goto :goto_0
.end method

.method public final b()Lcom/crittercism/internal/aa;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    return-object v0
.end method

.method public final c()Lcom/crittercism/internal/aa;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 115
    const v0, 0x7fffffff

    return v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 64
    .line 5130
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 64
    invoke-virtual {p0}, Lcom/crittercism/internal/af;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->b(I)V

    .line 6130
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 65
    sget-object v1, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    .line 66
    return-void
.end method
