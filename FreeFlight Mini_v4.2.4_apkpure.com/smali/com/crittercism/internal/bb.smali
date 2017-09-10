.class public final Lcom/crittercism/internal/bb;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Lcom/crittercism/internal/ax;

.field private b:Ljava/lang/String;

.field private c:Lcom/crittercism/internal/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/crittercism/internal/ax;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/crittercism/internal/bb;->a:Lcom/crittercism/internal/ax;

    .line 23
    new-instance v0, Lcom/crittercism/internal/d;

    invoke-direct {v0, p1}, Lcom/crittercism/internal/d;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {v0}, Lcom/crittercism/internal/d;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crittercism/internal/bb;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Lcom/crittercism/internal/d;->a()Lcom/crittercism/internal/b;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/bb;->c:Lcom/crittercism/internal/b;

    .line 27
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CrittercismReceiver: INTENT ACTION = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/crittercism/internal/d;

    invoke-direct {v0, p1}, Lcom/crittercism/internal/d;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v0}, Lcom/crittercism/internal/d;->a()Lcom/crittercism/internal/b;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/crittercism/internal/bb;->c:Lcom/crittercism/internal/b;

    if-eq v2, v1, :cond_1

    sget-object v2, Lcom/crittercism/internal/b;->c:Lcom/crittercism/internal/b;

    if-eq v1, v2, :cond_1

    .line 1049
    sget-object v2, Lcom/crittercism/internal/b;->d:Lcom/crittercism/internal/b;

    if-ne v1, v2, :cond_5

    .line 1050
    iget-object v2, p0, Lcom/crittercism/internal/bb;->a:Lcom/crittercism/internal/ax;

    new-instance v3, Lcom/crittercism/internal/cc;

    sget v4, Lcom/crittercism/internal/cc$a;->b:I

    invoke-direct {v3, v4}, Lcom/crittercism/internal/cc;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V

    .line 38
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/crittercism/internal/bb;->c:Lcom/crittercism/internal/b;

    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/crittercism/internal/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/crittercism/internal/bb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1060
    iget-object v1, p0, Lcom/crittercism/internal/bb;->b:Ljava/lang/String;

    .line 1084
    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1060
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/crittercism/internal/bb;->b:Ljava/lang/String;

    .line 2080
    const-string v2, "disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1060
    if-eqz v1, :cond_7

    .line 2084
    :cond_2
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1061
    if-nez v1, :cond_3

    .line 3080
    const-string v1, "disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1061
    if-nez v1, :cond_3

    .line 1062
    iget-object v1, p0, Lcom/crittercism/internal/bb;->a:Lcom/crittercism/internal/ax;

    new-instance v2, Lcom/crittercism/internal/cc;

    sget v3, Lcom/crittercism/internal/cc$a;->c:I

    invoke-direct {v2, v3, v0}, Lcom/crittercism/internal/cc;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V

    .line 44
    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/crittercism/internal/bb;->b:Ljava/lang/String;

    .line 46
    :cond_4
    return-void

    .line 1052
    :cond_5
    iget-object v2, p0, Lcom/crittercism/internal/bb;->c:Lcom/crittercism/internal/b;

    sget-object v3, Lcom/crittercism/internal/b;->d:Lcom/crittercism/internal/b;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/crittercism/internal/bb;->c:Lcom/crittercism/internal/b;

    sget-object v3, Lcom/crittercism/internal/b;->c:Lcom/crittercism/internal/b;

    if-ne v2, v3, :cond_0

    .line 1054
    :cond_6
    iget-object v2, p0, Lcom/crittercism/internal/bb;->a:Lcom/crittercism/internal/ax;

    new-instance v3, Lcom/crittercism/internal/cc;

    sget v4, Lcom/crittercism/internal/cc$a;->a:I

    invoke-direct {v3, v4}, Lcom/crittercism/internal/cc;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V

    goto :goto_0

    .line 4080
    :cond_7
    const-string v1, "disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1067
    if-eqz v1, :cond_8

    .line 1068
    iget-object v1, p0, Lcom/crittercism/internal/bb;->a:Lcom/crittercism/internal/ax;

    new-instance v2, Lcom/crittercism/internal/cc;

    sget v3, Lcom/crittercism/internal/cc$a;->d:I

    iget-object v4, p0, Lcom/crittercism/internal/bb;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/crittercism/internal/cc;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V

    goto :goto_1

    .line 4084
    :cond_8
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1071
    if-nez v1, :cond_3

    .line 1072
    iget-object v1, p0, Lcom/crittercism/internal/bb;->a:Lcom/crittercism/internal/ax;

    new-instance v2, Lcom/crittercism/internal/cc;

    sget v3, Lcom/crittercism/internal/cc$a;->e:I

    iget-object v4, p0, Lcom/crittercism/internal/bb;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/crittercism/internal/cc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V

    goto :goto_1
.end method
