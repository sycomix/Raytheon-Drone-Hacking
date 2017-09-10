.class public final Lcom/crittercism/internal/ai;
.super Lcom/crittercism/internal/ag;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/aa;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/crittercism/internal/ag;-><init>(Lcom/crittercism/internal/aa;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected final g()Lcom/crittercism/internal/aa;
    .locals 2

    .prologue
    .line 15
    .line 1201
    iget-boolean v0, p0, Lcom/crittercism/internal/ag;->f:Z

    .line 15
    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lcom/crittercism/internal/ae;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/ae;-><init>(Lcom/crittercism/internal/aa;)V

    .line 39
    :goto_0
    return-object v0

    .line 2160
    :cond_0
    iget-boolean v0, p0, Lcom/crittercism/internal/ag;->d:Z

    .line 20
    if-eqz v0, :cond_1

    .line 2168
    iget v0, p0, Lcom/crittercism/internal/ag;->e:I

    .line 20
    if-lez v0, :cond_1

    .line 23
    new-instance v0, Lcom/crittercism/internal/ac;

    .line 3168
    iget v1, p0, Lcom/crittercism/internal/ag;->e:I

    .line 23
    invoke-direct {v0, p0, v1}, Lcom/crittercism/internal/ac;-><init>(Lcom/crittercism/internal/aa;I)V

    goto :goto_0

    .line 4130
    :cond_1
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 34
    invoke-virtual {p0}, Lcom/crittercism/internal/ai;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->b(I)V

    .line 5130
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 35
    invoke-interface {v0}, Lcom/crittercism/internal/ah;->b()Lcom/crittercism/internal/aa;

    move-result-object v0

    goto :goto_0
.end method
