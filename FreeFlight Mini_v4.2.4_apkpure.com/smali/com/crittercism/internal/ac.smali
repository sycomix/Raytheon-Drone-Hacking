.class public final Lcom/crittercism/internal/ac;
.super Lcom/crittercism/internal/aa;


# instance fields
.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/aa;I)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/crittercism/internal/aa;-><init>(Lcom/crittercism/internal/aa;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/crittercism/internal/ac;->e:I

    .line 34
    iput p2, p0, Lcom/crittercism/internal/ac;->d:I

    .line 35
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 47
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1130
    iget-object v1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 49
    sget-object v2, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v1, v2}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    .line 66
    :goto_0
    return v0

    .line 53
    :cond_0
    iget v1, p0, Lcom/crittercism/internal/ac;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/crittercism/internal/ac;->e:I

    .line 54
    iget v1, p0, Lcom/crittercism/internal/ac;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/crittercism/internal/ac;->c:I

    .line 56
    iget v1, p0, Lcom/crittercism/internal/ac;->e:I

    iget v2, p0, Lcom/crittercism/internal/ac;->d:I

    if-ne v1, v2, :cond_1

    .line 2130
    iget-object v1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 57
    invoke-virtual {p0}, Lcom/crittercism/internal/ac;->a()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/crittercism/internal/ah;->b(I)V

    .line 3130
    iget-object v1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 60
    invoke-interface {v1}, Lcom/crittercism/internal/ah;->b()Lcom/crittercism/internal/aa;

    move-result-object v1

    .line 4130
    iget-object v2, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 62
    invoke-interface {v2, v1}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    goto :goto_0

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/crittercism/internal/ab;)Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public final b([BII)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 82
    if-ne p3, v0, :cond_0

    .line 5130
    iget-object v1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 84
    sget-object v2, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v1, v2}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    move p3, v0

    .line 104
    :goto_0
    return p3

    .line 88
    :cond_0
    iget v0, p0, Lcom/crittercism/internal/ac;->e:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/crittercism/internal/ac;->d:I

    if-ge v0, v1, :cond_1

    .line 93
    iget v0, p0, Lcom/crittercism/internal/ac;->e:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/crittercism/internal/ac;->e:I

    .line 94
    iget v0, p0, Lcom/crittercism/internal/ac;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/crittercism/internal/ac;->c:I

    goto :goto_0

    .line 99
    :cond_1
    iget v0, p0, Lcom/crittercism/internal/ac;->d:I

    iget v1, p0, Lcom/crittercism/internal/ac;->e:I

    sub-int p3, v0, v1

    .line 100
    iget v0, p0, Lcom/crittercism/internal/ac;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/crittercism/internal/ac;->c:I

    .line 6130
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 101
    invoke-virtual {p0}, Lcom/crittercism/internal/ac;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->b(I)V

    .line 7130
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 8130
    iget-object v1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 102
    invoke-interface {v1}, Lcom/crittercism/internal/ah;->b()Lcom/crittercism/internal/aa;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    goto :goto_0
.end method

.method public final b()Lcom/crittercism/internal/aa;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    return-object v0
.end method

.method public final c()Lcom/crittercism/internal/aa;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 169
    .line 9130
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 169
    invoke-virtual {p0}, Lcom/crittercism/internal/ac;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->b(I)V

    .line 10130
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 170
    sget-object v1, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    .line 171
    return-void
.end method
