.class public final Lcom/crittercism/internal/az;
.super Lcom/crittercism/app/CrittercismConfig;


# instance fields
.field b:Ljava/lang/String;

.field public c:Lcom/crittercism/internal/bl;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/bl;Lcom/crittercism/app/CrittercismConfig;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p2}, Lcom/crittercism/app/CrittercismConfig;-><init>(Lcom/crittercism/app/CrittercismConfig;)V

    .line 27
    const-string v0, "524c99a04002057fcd000001"

    iput-object v0, p0, Lcom/crittercism/internal/az;->b:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 45
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/crittercism/app/CrittercismConfig;->a()Ljava/util/List;

    move-result-object v0

    .line 1080
    iget-object v1, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 1085
    iget-object v1, v1, Lcom/crittercism/internal/bl;->a:Ljava/lang/String;

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/crittercism/internal/az;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 113
    instance-of v0, p1, Lcom/crittercism/internal/az;

    if-nez v0, :cond_0

    move v0, v1

    .line 120
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 117
    check-cast v0, Lcom/crittercism/internal/az;

    .line 120
    invoke-super {p0, p1}, Lcom/crittercism/app/CrittercismConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2072
    iget-object v2, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 2081
    iget-object v2, v2, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 3072
    iget-object v3, v0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 3081
    iget-object v3, v3, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 120
    invoke-static {v2, v3}, Lcom/crittercism/internal/az;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4080
    iget-object v2, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 4085
    iget-object v2, v2, Lcom/crittercism/internal/bl;->a:Ljava/lang/String;

    .line 5080
    iget-object v3, v0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 5085
    iget-object v3, v3, Lcom/crittercism/internal/bl;->a:Ljava/lang/String;

    .line 120
    invoke-static {v2, v3}, Lcom/crittercism/internal/az;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5088
    iget-object v2, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 5093
    iget-object v2, v2, Lcom/crittercism/internal/bl;->c:Ljava/lang/String;

    .line 6088
    iget-object v3, v0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 6093
    iget-object v3, v3, Lcom/crittercism/internal/bl;->c:Ljava/lang/String;

    .line 120
    invoke-static {v2, v3}, Lcom/crittercism/internal/az;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6096
    iget-object v2, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 7089
    iget-object v2, v2, Lcom/crittercism/internal/bl;->d:Ljava/lang/String;

    .line 7096
    iget-object v3, v0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 8089
    iget-object v3, v3, Lcom/crittercism/internal/bl;->d:Ljava/lang/String;

    .line 120
    invoke-static {v2, v3}, Lcom/crittercism/internal/az;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/crittercism/internal/az;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/crittercism/internal/az;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/crittercism/internal/az;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/crittercism/app/CrittercismConfig;->hashCode()I

    move-result v0

    .line 137
    mul-int/lit8 v0, v0, 0x1f

    .line 9072
    iget-object v1, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 9081
    iget-object v1, v1, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 138
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    mul-int/lit8 v0, v0, 0x1f

    .line 10080
    iget-object v1, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 10085
    iget-object v1, v1, Lcom/crittercism/internal/bl;->a:Ljava/lang/String;

    .line 140
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    mul-int/lit8 v0, v0, 0x1f

    .line 10088
    iget-object v1, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 10093
    iget-object v1, v1, Lcom/crittercism/internal/bl;->c:Ljava/lang/String;

    .line 142
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    mul-int/lit8 v0, v0, 0x1f

    .line 10096
    iget-object v1, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 11089
    iget-object v1, v1, Lcom/crittercism/internal/bl;->d:Ljava/lang/String;

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    .line 146
    iget-object v1, p0, Lcom/crittercism/internal/az;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    return v0
.end method
