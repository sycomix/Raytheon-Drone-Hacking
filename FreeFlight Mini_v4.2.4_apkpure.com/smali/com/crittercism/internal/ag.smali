.class public abstract Lcom/crittercism/internal/ag;
.super Lcom/crittercism/internal/aa;


# instance fields
.field d:Z

.field e:I

.field f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/aa;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/crittercism/internal/aa;-><init>(Lcom/crittercism/internal/aa;)V

    .line 38
    iput-boolean v0, p0, Lcom/crittercism/internal/ag;->d:Z

    .line 40
    iput-boolean v0, p0, Lcom/crittercism/internal/ag;->g:Z

    .line 41
    iput-boolean v0, p0, Lcom/crittercism/internal/ag;->h:Z

    .line 42
    iput-boolean v0, p0, Lcom/crittercism/internal/ag;->f:Z

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lcom/crittercism/internal/ab;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 107
    .line 4134
    iget-object v2, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    .line 5101
    iget v2, v2, Lcom/crittercism/internal/ab;->b:I

    .line 4099
    if-eqz v2, :cond_0

    if-ne v2, v0, :cond_2

    .line 5134
    iget-object v2, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    .line 5172
    iget-object v2, v2, Lcom/crittercism/internal/ab;->a:[C

    aget-char v2, v2, v1

    .line 4099
    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    :cond_0
    move v2, v0

    .line 107
    :goto_0
    if-eqz v2, :cond_3

    .line 108
    iput-boolean v0, p0, Lcom/crittercism/internal/ag;->h:Z

    .line 150
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v1

    .line 4099
    goto :goto_0

    .line 116
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/crittercism/internal/ab;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 117
    array-length v3, v2

    if-eq v3, v5, :cond_4

    move v0, v1

    .line 118
    goto :goto_1

    .line 121
    :cond_4
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 122
    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 125
    iget-boolean v4, p0, Lcom/crittercism/internal/ag;->d:Z

    if-nez v4, :cond_6

    const-string v4, "content-length"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 129
    if-gez v2, :cond_5

    move v0, v1

    .line 131
    goto :goto_1

    .line 133
    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/crittercism/internal/ag;->d:Z

    .line 134
    iput v2, p0, Lcom/crittercism/internal/ag;->e:I

    goto :goto_1

    .line 147
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 136
    :cond_6
    const-string/jumbo v4, "transfer-encoding"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 137
    const-string v3, "chunked"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/crittercism/internal/ag;->f:Z

    goto :goto_1

    .line 138
    :cond_7
    iget-boolean v4, p0, Lcom/crittercism/internal/ag;->g:Z

    if-nez v4, :cond_1

    const-string v4, "host"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    if-eqz v2, :cond_1

    .line 142
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/crittercism/internal/ag;->g:Z

    .line 6130
    iget-object v3, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    .line 143
    invoke-interface {v3, v2}, Lcom/crittercism/internal/ah;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public final b()Lcom/crittercism/internal/aa;
    .locals 2

    .prologue
    .line 58
    .line 60
    iget-boolean v0, p0, Lcom/crittercism/internal/ag;->h:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/crittercism/internal/ag;->g()Lcom/crittercism/internal/aa;

    move-result-object p0

    .line 70
    :goto_0
    return-object p0

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    .line 2113
    const/4 v1, 0x0

    iput v1, v0, Lcom/crittercism/internal/ab;->b:I

    goto :goto_0
.end method

.method public final c()Lcom/crittercism/internal/aa;
    .locals 2

    .prologue
    .line 92
    .line 2134
    iget-object v0, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    .line 3113
    const/4 v1, 0x0

    iput v1, v0, Lcom/crittercism/internal/ab;->b:I

    .line 93
    new-instance v0, Lcom/crittercism/internal/an;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/an;-><init>(Lcom/crittercism/internal/aa;)V

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 179
    const/16 v0, 0x20

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 192
    const/16 v0, 0x80

    return v0
.end method

.method protected abstract g()Lcom/crittercism/internal/aa;
.end method
