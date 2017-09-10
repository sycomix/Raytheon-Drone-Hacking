.class final Lcom/crittercism/internal/ax$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 1074
    invoke-direct {p0}, Lcom/crittercism/internal/ax$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2091
    :try_start_0
    sget-object v1, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 1081
    iget-object v1, v1, Lcom/crittercism/internal/ax;->v:Lcom/crittercism/internal/e;

    .line 3091
    sget-object v2, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 4091
    iget-object v2, v2, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    .line 1081
    invoke-virtual {v2}, Lcom/crittercism/internal/az;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/e;->a(Ljava/util/List;)V

    .line 5091
    sget-object v1, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 1082
    iget-object v1, v1, Lcom/crittercism/internal/ax;->v:Lcom/crittercism/internal/e;

    .line 6091
    sget-object v2, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 7091
    iget-object v2, v2, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    .line 1082
    invoke-virtual {v2}, Lcom/crittercism/internal/az;->getPreserveQueryStringPatterns()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/e;->b(Ljava/util/List;)V

    .line 1084
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8091
    sget-object v3, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 9091
    iget-object v3, v3, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    .line 10080
    iget-object v3, v3, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 10085
    iget-object v3, v3, Lcom/crittercism/internal/bl;->a:Ljava/lang/String;

    .line 1084
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api/apm/network"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 10091
    sget-object v2, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 1086
    new-instance v3, Lcom/crittercism/internal/g;

    .line 11091
    sget-object v4, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 1086
    invoke-direct {v3, v4, v1}, Lcom/crittercism/internal/g;-><init>(Lcom/crittercism/internal/ar;Ljava/net/URL;)V

    .line 12091
    iput-object v3, v2, Lcom/crittercism/internal/ax;->p:Lcom/crittercism/internal/g;

    .line 13091
    sget-object v1, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 1087
    iget-object v1, v1, Lcom/crittercism/internal/ax;->v:Lcom/crittercism/internal/e;

    .line 14091
    sget-object v2, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 15091
    iget-object v2, v2, Lcom/crittercism/internal/ax;->p:Lcom/crittercism/internal/g;

    .line 1087
    invoke-virtual {v1, v2}, Lcom/crittercism/internal/e;->a(Lcom/crittercism/internal/f;)V

    .line 16091
    sget-object v1, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 1088
    iget-object v1, v1, Lcom/crittercism/internal/ax;->v:Lcom/crittercism/internal/e;

    .line 17091
    sget-object v2, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 1088
    invoke-virtual {v1, v2}, Lcom/crittercism/internal/e;->a(Lcom/crittercism/internal/f;)V

    .line 1089
    new-instance v1, Lcom/crittercism/internal/dx;

    .line 18091
    sget-object v2, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 19091
    iget-object v2, v2, Lcom/crittercism/internal/ax;->p:Lcom/crittercism/internal/g;

    .line 1089
    const-string v3, "OPTMZ"

    invoke-direct {v1, v2, v3}, Lcom/crittercism/internal/dx;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 20091
    sget-object v1, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 21091
    iget-object v1, v1, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    .line 21192
    invoke-static {v1}, Lcom/crittercism/internal/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1092
    if-nez v1, :cond_0

    .line 22091
    sget-object v1, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 23091
    iget-object v1, v1, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    .line 1092
    invoke-virtual {v1}, Lcom/crittercism/internal/az;->isServiceMonitoringEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    new-instance v2, Lcom/crittercism/internal/d;

    .line 24091
    sget-object v1, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 25091
    iget-object v1, v1, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    .line 1096
    invoke-direct {v2, v1}, Lcom/crittercism/internal/d;-><init>(Landroid/content/Context;)V

    .line 26091
    sget-object v1, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 1098
    iget-object v3, v1, Lcom/crittercism/internal/ax;->v:Lcom/crittercism/internal/e;

    .line 27021
    invoke-static {v3, v2}, Lcom/crittercism/internal/y;->a(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)Z

    move-result v4

    .line 27023
    const-string v1, "non-SSL"

    invoke-static {v4, v1}, Lcom/crittercism/internal/i;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 27027
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v1, v5, :cond_4

    .line 27028
    invoke-static {v3, v2}, Lcom/crittercism/internal/r;->a(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)Z

    move-result v1

    .line 27034
    :goto_1
    const-string v5, "SSL"

    invoke-static {v1, v5}, Lcom/crittercism/internal/i;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 27039
    if-eqz v1, :cond_2

    .line 27040
    invoke-static {v3, v2}, Lcom/crittercism/internal/n;->a(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)Z

    move-result v0

    .line 27042
    const-string v2, "provider"

    invoke-static {v0, v2}, Lcom/crittercism/internal/i;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 27046
    :cond_2
    if-nez v4, :cond_3

    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    .line 27047
    :cond_3
    const-string v0, "installed service monitoring"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in installApm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 1102
    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 27030
    :cond_4
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v1, v5, :cond_5

    .line 27031
    invoke-static {v3, v2}, Lcom/crittercism/internal/q;->a(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_1
.end method
