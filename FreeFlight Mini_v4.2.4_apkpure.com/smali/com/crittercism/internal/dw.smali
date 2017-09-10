.class public final Lcom/crittercism/internal/dw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/internal/dw$1;,
        Lcom/crittercism/internal/dw$b;,
        Lcom/crittercism/internal/dw$a;
    }
.end annotation


# static fields
.field public static a:I

.field private static b:Lcom/crittercism/internal/ea;

.field private static c:Lcom/crittercism/internal/dw$b;

.field private static d:Lcom/crittercism/internal/dw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/crittercism/internal/dw$a;->a:I

    sput v0, Lcom/crittercism/internal/dw;->a:I

    .line 69
    sget-object v0, Lcom/crittercism/internal/dw$b;->d:Lcom/crittercism/internal/dw$b;

    sput-object v0, Lcom/crittercism/internal/dw;->c:Lcom/crittercism/internal/dw$b;

    .line 134
    new-instance v0, Lcom/crittercism/internal/dw;

    invoke-direct {v0}, Lcom/crittercism/internal/dw;-><init>()V

    sput-object v0, Lcom/crittercism/internal/dw;->d:Lcom/crittercism/internal/dw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static a(Lcom/crittercism/app/Crittercism$LoggingLevel;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {p0}, Lcom/crittercism/internal/dw$b;->a(Lcom/crittercism/app/Crittercism$LoggingLevel;)Lcom/crittercism/internal/dw$b;

    move-result-object v0

    sput-object v0, Lcom/crittercism/internal/dw;->c:Lcom/crittercism/internal/dw$b;

    .line 74
    return-void
.end method

.method public static a(Lcom/crittercism/internal/ea;)V
    .locals 0

    .prologue
    .line 22
    sput-object p0, Lcom/crittercism/internal/dw;->b:Lcom/crittercism/internal/ea;

    .line 23
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/crittercism/internal/dw;->c:Lcom/crittercism/internal/dw$b;

    sget-object v1, Lcom/crittercism/internal/dw$b;->b:Lcom/crittercism/internal/dw$b;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/dw$b;->a(Lcom/crittercism/internal/dw$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "Crittercism"

    .line 1093
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/crittercism/internal/dw;->c:Lcom/crittercism/internal/dw$b;

    sget-object v1, Lcom/crittercism/internal/dw$b;->b:Lcom/crittercism/internal/dw$b;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/dw$b;->a(Lcom/crittercism/internal/dw$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "Crittercism"

    .line 1097
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 196
    sget-object v0, Lcom/crittercism/internal/dw;->c:Lcom/crittercism/internal/dw$b;

    sget-object v1, Lcom/crittercism/internal/dw$b;->e:Lcom/crittercism/internal/dw$b;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/dw$b;->a(Lcom/crittercism/internal/dw$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "Crittercism"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 2121
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lcom/crittercism/internal/dw;->c:Lcom/crittercism/internal/dw$b;

    sget-object v1, Lcom/crittercism/internal/dw$b;->c:Lcom/crittercism/internal/dw$b;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/dw$b;->a(Lcom/crittercism/internal/dw$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "Crittercism"

    .line 1101
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/crittercism/internal/dw;->c:Lcom/crittercism/internal/dw$b;

    sget-object v1, Lcom/crittercism/internal/dw$b;->c:Lcom/crittercism/internal/dw$b;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/dw$b;->a(Lcom/crittercism/internal/dw$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "Crittercism"

    .line 1105
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 218
    instance-of v0, p0, Lcom/crittercism/internal/cn;

    if-nez v0, :cond_0

    .line 2233
    :try_start_0
    sget-object v0, Lcom/crittercism/internal/dw;->b:Lcom/crittercism/internal/ea;

    if-eqz v0, :cond_0

    .line 2234
    sget v0, Lcom/crittercism/internal/dw;->a:I

    sget v1, Lcom/crittercism/internal/dw$a;->b:I

    if-ne v0, v1, :cond_0

    .line 2235
    sget-object v0, Lcom/crittercism/internal/dw;->b:Lcom/crittercism/internal/ea;

    .line 3040
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 3042
    new-instance v1, Lcom/crittercism/internal/ea$1;

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/crittercism/internal/ea$1;-><init>(Lcom/crittercism/internal/ea;Ljava/lang/Throwable;J)V

    .line 3063
    iget-object v2, v0, Lcom/crittercism/internal/ea;->c:Lcom/crittercism/internal/dg;

    invoke-virtual {v2, v1}, Lcom/crittercism/internal/dg;->a(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3064
    iget-object v0, v0, Lcom/crittercism/internal/ea;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/crittercism/internal/dw;->c:Lcom/crittercism/internal/dw$b;

    sget-object v1, Lcom/crittercism/internal/dw$b;->d:Lcom/crittercism/internal/dw$b;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/dw$b;->a(Lcom/crittercism/internal/dw$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "Crittercism"

    .line 1109
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/crittercism/internal/dw;->c:Lcom/crittercism/internal/dw$b;

    sget-object v1, Lcom/crittercism/internal/dw$b;->e:Lcom/crittercism/internal/dw$b;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/dw$b;->a(Lcom/crittercism/internal/dw$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "Crittercism"

    .line 1121
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/crittercism/internal/dw;->c:Lcom/crittercism/internal/dw$b;

    sget-object v1, Lcom/crittercism/internal/dw$b;->e:Lcom/crittercism/internal/dw$b;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/dw$b;->a(Lcom/crittercism/internal/dw$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "Crittercism"

    .line 1117
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    return-void
.end method
