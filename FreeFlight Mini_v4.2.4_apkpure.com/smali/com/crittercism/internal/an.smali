.class public final Lcom/crittercism/internal/an;
.super Lcom/crittercism/internal/aa;


# instance fields
.field private d:Lcom/crittercism/internal/aa;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/aa;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/crittercism/internal/aa;-><init>(Lcom/crittercism/internal/aa;)V

    .line 21
    iput-object p1, p0, Lcom/crittercism/internal/an;->d:Lcom/crittercism/internal/aa;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 26
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1130
    iget-object v1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 27
    sget-object v2, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v1, v2}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    .line 38
    :goto_0
    return v0

    .line 31
    :cond_0
    iget v1, p0, Lcom/crittercism/internal/an;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/crittercism/internal/an;->c:I

    .line 32
    int-to-char v1, p1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 33
    iget-object v1, p0, Lcom/crittercism/internal/an;->d:Lcom/crittercism/internal/aa;

    invoke-virtual {p0}, Lcom/crittercism/internal/an;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/aa;->b(I)V

    .line 2130
    iget-object v1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 34
    iget-object v2, p0, Lcom/crittercism/internal/an;->d:Lcom/crittercism/internal/aa;

    invoke-interface {v1, v2}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/crittercism/internal/ab;)Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/crittercism/internal/aa;
    .locals 0

    .prologue
    .line 46
    return-object p0
.end method

.method public final c()Lcom/crittercism/internal/aa;
    .locals 0

    .prologue
    .line 52
    return-object p0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
