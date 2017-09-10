.class public final Lcom/crittercism/internal/ak;
.super Lcom/crittercism/internal/ag;


# instance fields
.field private g:I


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/aa;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/crittercism/internal/ag;-><init>(Lcom/crittercism/internal/aa;)V

    .line 11
    iput p2, p0, Lcom/crittercism/internal/ak;->g:I

    .line 12
    return-void
.end method


# virtual methods
.method protected final g()Lcom/crittercism/internal/aa;
    .locals 2

    .prologue
    .line 20
    .line 1130
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 1072
    invoke-interface {v0}, Lcom/crittercism/internal/ah;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/crittercism/internal/ak;->g:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/crittercism/internal/ak;->g:I

    const/16 v1, 0xc7

    if-le v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/crittercism/internal/ak;->g:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/crittercism/internal/ak;->g:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 20
    :goto_0
    if-eqz v0, :cond_3

    .line 2130
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 25
    invoke-virtual {p0}, Lcom/crittercism/internal/ak;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->b(I)V

    .line 3130
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 26
    invoke-interface {v0}, Lcom/crittercism/internal/ah;->b()Lcom/crittercism/internal/aa;

    move-result-object v0

    .line 59
    :goto_1
    return-object v0

    .line 1072
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3201
    :cond_3
    iget-boolean v0, p0, Lcom/crittercism/internal/ag;->f:Z

    .line 28
    if-eqz v0, :cond_4

    .line 31
    new-instance v0, Lcom/crittercism/internal/ae;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/ae;-><init>(Lcom/crittercism/internal/aa;)V

    goto :goto_1

    .line 4160
    :cond_4
    iget-boolean v0, p0, Lcom/crittercism/internal/ag;->d:Z

    .line 33
    if-eqz v0, :cond_6

    .line 4168
    iget v0, p0, Lcom/crittercism/internal/ag;->e:I

    .line 37
    if-lez v0, :cond_5

    .line 38
    new-instance v0, Lcom/crittercism/internal/ac;

    .line 5168
    iget v1, p0, Lcom/crittercism/internal/ag;->e:I

    .line 38
    invoke-direct {v0, p0, v1}, Lcom/crittercism/internal/ac;-><init>(Lcom/crittercism/internal/aa;I)V

    goto :goto_1

    .line 6130
    :cond_5
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 40
    invoke-virtual {p0}, Lcom/crittercism/internal/ak;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->b(I)V

    .line 7130
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 41
    invoke-interface {v0}, Lcom/crittercism/internal/ah;->b()Lcom/crittercism/internal/aa;

    move-result-object v0

    goto :goto_1

    .line 8130
    :cond_6
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 43
    invoke-interface {v0}, Lcom/crittercism/internal/ah;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9130
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 46
    invoke-virtual {p0}, Lcom/crittercism/internal/ak;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->b(I)V

    .line 10130
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 47
    invoke-interface {v0}, Lcom/crittercism/internal/ah;->b()Lcom/crittercism/internal/aa;

    move-result-object v0

    goto :goto_1

    .line 55
    :cond_7
    new-instance v0, Lcom/crittercism/internal/af;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/af;-><init>(Lcom/crittercism/internal/aa;)V

    goto :goto_1
.end method
