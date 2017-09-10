.class public final Lcom/crittercism/internal/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/ar;
.implements Lcom/crittercism/internal/au;
.implements Lcom/crittercism/internal/av;
.implements Lcom/crittercism/internal/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/internal/ax$5;,
        Lcom/crittercism/internal/ax$a;,
        Lcom/crittercism/internal/ax$b;,
        Lcom/crittercism/internal/ax$c;
    }
.end annotation


# static fields
.field static a:Lcom/crittercism/internal/ax;


# instance fields
.field public A:Lcom/crittercism/internal/ds;

.field B:I

.field public C:Lcom/crittercism/internal/ap;

.field private D:Lcom/crittercism/internal/dv;

.field private E:Lcom/crittercism/internal/bq;

.field private F:Lcom/crittercism/internal/bq;

.field private G:Lcom/crittercism/internal/bq;

.field private H:Lcom/crittercism/internal/bq;

.field private I:Lcom/crittercism/internal/bq;

.field private J:Lcom/crittercism/internal/aq;

.field private K:Ljava/lang/String;

.field private L:Ljava/util/Set;

.field public b:Z

.field public c:Landroid/content/Context;

.field public d:Lcom/crittercism/internal/at;

.field public e:Ljava/lang/String;

.field public final f:Landroid/os/ConditionVariable;

.field public g:Lcom/crittercism/internal/dr;

.field h:Lcom/crittercism/internal/bq;

.field i:Lcom/crittercism/internal/bq;

.field j:Lcom/crittercism/internal/bq;

.field k:Lcom/crittercism/internal/bq;

.field l:Lcom/crittercism/internal/bq;

.field m:Lcom/crittercism/internal/bq;

.field n:Lcom/crittercism/internal/cv;

.field public o:Lcom/crittercism/internal/dg;

.field p:Lcom/crittercism/internal/g;

.field public q:Ljava/util/concurrent/ExecutorService;

.field r:Ljava/util/concurrent/ExecutorService;

.field public s:Z

.field public t:Lcom/crittercism/app/CrittercismConfig;

.field public u:Lcom/crittercism/internal/az;

.field protected v:Lcom/crittercism/internal/e;

.field public w:Lcom/crittercism/internal/dq;

.field x:Lcom/crittercism/internal/du;

.field public y:Lcom/crittercism/internal/bg;

.field z:Ljava/util/Map;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v2, p0, Lcom/crittercism/internal/ax;->b:Z

    .line 101
    iput-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    .line 102
    iput-object v1, p0, Lcom/crittercism/internal/ax;->d:Lcom/crittercism/internal/at;

    .line 103
    iput-object v1, p0, Lcom/crittercism/internal/ax;->e:Ljava/lang/String;

    .line 106
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->f:Landroid/os/ConditionVariable;

    .line 108
    new-instance v0, Lcom/crittercism/internal/dr;

    invoke-direct {v0}, Lcom/crittercism/internal/dr;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 109
    new-instance v0, Lcom/crittercism/internal/dv;

    invoke-direct {v0}, Lcom/crittercism/internal/dv;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->D:Lcom/crittercism/internal/dv;

    .line 122
    iput-object v1, p0, Lcom/crittercism/internal/ax;->n:Lcom/crittercism/internal/cv;

    .line 124
    iput-object v1, p0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    .line 125
    iput-object v1, p0, Lcom/crittercism/internal/ax;->p:Lcom/crittercism/internal/g;

    .line 128
    new-instance v0, Lcom/crittercism/internal/dy;

    invoke-direct {v0}, Lcom/crittercism/internal/dy;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/ax;->q:Ljava/util/concurrent/ExecutorService;

    .line 131
    new-instance v0, Lcom/crittercism/internal/dy;

    invoke-direct {v0}, Lcom/crittercism/internal/dy;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/ax;->r:Ljava/util/concurrent/ExecutorService;

    .line 135
    iput-boolean v2, p0, Lcom/crittercism/internal/ax;->s:Z

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/crittercism/internal/ax;->K:Ljava/lang/String;

    .line 146
    iput-object v1, p0, Lcom/crittercism/internal/ax;->x:Lcom/crittercism/internal/du;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->z:Ljava/util/Map;

    .line 150
    iput-object v1, p0, Lcom/crittercism/internal/ax;->A:Lcom/crittercism/internal/ds;

    .line 152
    iput v2, p0, Lcom/crittercism/internal/ax;->B:I

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->L:Ljava/util/Set;

    .line 160
    new-instance v0, Lcom/crittercism/internal/e;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->r:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1}, Lcom/crittercism/internal/e;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->v:Lcom/crittercism/internal/e;

    .line 161
    return-void
.end method

.method public static C()Lcom/crittercism/internal/ax;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/crittercism/internal/ax;

    invoke-direct {v0}, Lcom/crittercism/internal/ax;-><init>()V

    sput-object v0, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    .line 168
    :cond_0
    sget-object v0, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    return-object v0
.end method

.method private static H()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    move v0, v1

    .line 290
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 291
    aget-object v3, v2, v0

    .line 292
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onCreate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onResume"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 294
    :cond_0
    const/4 v1, 0x1

    .line 297
    :cond_1
    return v1

    .line 290
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private I()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 333
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 334
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 337
    iget-object v0, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 339
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 342
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 343
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v1, v4, :cond_4

    .line 345
    add-int/lit8 v1, v2, 0x1

    :goto_1
    move v2, v1

    .line 347
    goto :goto_0

    .line 349
    :cond_0
    if-gt v2, v7, :cond_2

    .line 350
    iput-boolean v3, p0, Lcom/crittercism/internal/ax;->s:Z

    .line 366
    :cond_1
    :goto_2
    return-void

    .line 354
    :cond_2
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 360
    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-ne v0, v5, :cond_3

    .line 362
    iput-boolean v7, p0, Lcom/crittercism/internal/ax;->s:Z

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private J()Ljava/lang/String;
    .locals 2

    .prologue
    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/ax;->K:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ax;->K:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/ax;->K:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/crittercism/internal/ax;->K:Ljava/lang/String;

    return-object v0

    .line 720
    :catch_0
    move-exception v0

    const-string v0, "Call to getPackageName() failed.  Please contact us at support@crittercism.com."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 721
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->K:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final A()V
    .locals 3

    .prologue
    .line 975
    iget-boolean v0, p0, Lcom/crittercism/internal/ax;->s:Z

    if-eqz v0, :cond_1

    .line 976
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->f:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bq;->a(Landroid/content/Context;)Lcom/crittercism/internal/bq;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/ax;->i:Lcom/crittercism/internal/bq;

    .line 983
    :goto_0
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->h:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->I:Lcom/crittercism/internal/bq;

    .line 984
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->g:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->j:Lcom/crittercism/internal/bq;

    .line 985
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->k:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->k:Lcom/crittercism/internal/bq;

    .line 987
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->a:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->E:Lcom/crittercism/internal/bq;

    .line 988
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->b:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->h:Lcom/crittercism/internal/bq;

    .line 989
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->c:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->F:Lcom/crittercism/internal/bq;

    .line 990
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->d:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->G:Lcom/crittercism/internal/bq;

    .line 991
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->e:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->H:Lcom/crittercism/internal/bq;

    .line 992
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->i:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->l:Lcom/crittercism/internal/bq;

    .line 993
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->j:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->m:Lcom/crittercism/internal/bq;

    .line 994
    iget-boolean v0, p0, Lcom/crittercism/internal/ax;->s:Z

    if-nez v0, :cond_0

    .line 995
    new-instance v0, Lcom/crittercism/internal/du;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/crittercism/internal/ax;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/du;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->x:Lcom/crittercism/internal/du;

    .line 997
    :cond_0
    return-void

    .line 980
    :cond_1
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    sget-object v2, Lcom/crittercism/internal/bp;->f:Lcom/crittercism/internal/bp;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->i:Lcom/crittercism/internal/bq;

    goto/16 :goto_0
.end method

.method public final B()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final D()V
    .locals 7

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing Crittercism 5.6.4 for App ID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crittercism/internal/ax;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;)V

    .line 230
    new-instance v0, Lcom/crittercism/internal/bl;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/crittercism/internal/bl;-><init>(Ljava/lang/String;)V

    .line 232
    new-instance v1, Lcom/crittercism/internal/az;

    iget-object v2, p0, Lcom/crittercism/internal/ax;->t:Lcom/crittercism/app/CrittercismConfig;

    invoke-direct {v1, v0, v2}, Lcom/crittercism/internal/az;-><init>(Lcom/crittercism/internal/bl;Lcom/crittercism/app/CrittercismConfig;)V

    iput-object v1, p0, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    .line 234
    new-instance v0, Lcom/crittercism/internal/aq;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/aq;-><init>(Landroid/content/Context;Lcom/crittercism/app/CrittercismConfig;)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->J:Lcom/crittercism/internal/aq;

    .line 235
    iget-object v0, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/ax;->K:Ljava/lang/String;

    .line 237
    new-instance v0, Lcom/crittercism/internal/dq;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/crittercism/internal/dq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->w:Lcom/crittercism/internal/dq;

    .line 239
    invoke-direct {p0}, Lcom/crittercism/internal/ax;->I()V

    .line 240
    const-wide v0, 0xdf8475800L

    .line 241
    iget-boolean v2, p0, Lcom/crittercism/internal/ax;->s:Z

    if-eqz v2, :cond_0

    .line 242
    const-wide v0, 0x2cb417800L

    .line 244
    :cond_0
    new-instance v2, Lcom/crittercism/internal/cv;

    invoke-direct {v2, v0, v1}, Lcom/crittercism/internal/cv;-><init>(J)V

    iput-object v2, p0, Lcom/crittercism/internal/ax;->n:Lcom/crittercism/internal/cv;

    .line 247
    invoke-static {}, Lcom/crittercism/internal/ax;->H()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    const-string v0, "Crittercism should be initialized in onCreate() of MainActivity"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/crittercism/internal/ax;->J:Lcom/crittercism/internal/aq;

    invoke-static {v0}, Lcom/crittercism/internal/bv;->a(Lcom/crittercism/internal/aq;)V

    .line 252
    iget-object v0, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/crittercism/internal/bv;->a(Landroid/content/Context;)V

    .line 253
    new-instance v0, Lcom/crittercism/internal/ca;

    invoke-direct {v0}, Lcom/crittercism/internal/ca;-><init>()V

    invoke-static {v0}, Lcom/crittercism/internal/bv;->a(Lcom/crittercism/internal/bz;)V

    .line 254
    new-instance v0, Lcom/crittercism/internal/bd;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bd;-><init>(Landroid/content/Context;Lcom/crittercism/app/CrittercismConfig;)V

    invoke-static {v0}, Lcom/crittercism/internal/bv;->a(Lcom/crittercism/internal/bd;)V

    .line 2065
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/crittercism/internal/ax$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/crittercism/internal/ax$a;-><init>(B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2066
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2068
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    new-instance v0, Lcom/crittercism/internal/ap;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    iget-object v2, p0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    iget-object v3, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/crittercism/internal/ap;-><init>(Lcom/crittercism/internal/az;Lcom/crittercism/internal/dr;Landroid/content/Context;Lcom/crittercism/internal/ax;)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->C:Lcom/crittercism/internal/ap;

    .line 259
    new-instance v0, Lcom/crittercism/internal/dg;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    iget-object v2, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/crittercism/internal/ax;->C:Lcom/crittercism/internal/ap;

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/crittercism/internal/dg;-><init>(Lcom/crittercism/internal/az;Landroid/content/Context;Lcom/crittercism/internal/au;Lcom/crittercism/internal/av;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/ap;)V

    iput-object v0, p0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    .line 261
    iget-boolean v0, p0, Lcom/crittercism/internal/ax;->s:Z

    if-nez v0, :cond_2

    .line 262
    new-instance v0, Lcom/crittercism/internal/ea;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->r:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    iget-object v3, p0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/crittercism/internal/ea;-><init>(Lcom/crittercism/internal/au;Ljava/util/concurrent/ExecutorService;Lcom/crittercism/internal/dg;Lcom/crittercism/internal/dr;)V

    .line 265
    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Lcom/crittercism/internal/ea;)V

    .line 272
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 273
    instance-of v1, v0, Lcom/crittercism/internal/aw;

    if-nez v1, :cond_3

    .line 274
    new-instance v1, Lcom/crittercism/internal/aw;

    invoke-direct {v1, p0, v0}, Lcom/crittercism/internal/aw;-><init>(Lcom/crittercism/internal/ax;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 276
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 279
    :cond_3
    new-instance v0, Lcom/crittercism/internal/as;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->d:Lcom/crittercism/internal/at;

    iget-object v2, p0, Lcom/crittercism/internal/ax;->C:Lcom/crittercism/internal/ap;

    invoke-direct {v0, v1, p0, v2}, Lcom/crittercism/internal/as;-><init>(Lcom/crittercism/internal/at;Lcom/crittercism/internal/ax;Lcom/crittercism/internal/ap;)V

    .line 281
    iget-object v1, p0, Lcom/crittercism/internal/ax;->d:Lcom/crittercism/internal/at;

    invoke-static {v1, v0}, Lcom/crittercism/internal/as;->a(Lcom/crittercism/internal/at;Lcom/crittercism/internal/as;)V

    .line 283
    new-instance v0, Lcom/crittercism/internal/dx;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    invoke-direct {v0, v1}, Lcom/crittercism/internal/dx;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/crittercism/internal/dx;->start()V

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/ax;->b:Z

    .line 285
    return-void

    .line 2070
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final E()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/crittercism/internal/ax;->A:Lcom/crittercism/internal/ds;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/crittercism/internal/ax;->A:Lcom/crittercism/internal/ds;

    invoke-virtual {v0}, Lcom/crittercism/internal/ds;->d()V

    .line 1296
    :cond_0
    return-void
.end method

.method public final F()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1332
    invoke-direct {p0}, Lcom/crittercism/internal/ax;->J()Ljava/lang/String;

    move-result-object v2

    .line 1333
    const/4 v0, 0x0

    .line 1334
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1335
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1336
    invoke-static {v0}, Lcom/crittercism/internal/do;->a(Ljava/lang/String;)Lcom/crittercism/internal/dm;

    move-result-object v0

    .line 1337
    if-eqz v0, :cond_1

    .line 1338
    invoke-interface {v0, v2}, Lcom/crittercism/internal/dm;->a(Ljava/lang/String;)Lcom/crittercism/internal/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crittercism/internal/dl;->a()Ljava/lang/String;

    move-result-object v0

    .line 1344
    :cond_0
    :goto_0
    return-object v0

    .line 1340
    :cond_1
    const-string v0, "Could not find app market for this app.  Will try rate-my-app test target in config."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    invoke-virtual {v0}, Lcom/crittercism/internal/az;->getRateMyAppTestTarget()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 1498
    iget-boolean v0, p0, Lcom/crittercism/internal/ax;->s:Z

    if-eqz v0, :cond_1

    .line 1527
    :cond_0
    :goto_0
    return-void

    .line 1504
    :cond_1
    new-instance v0, Lcom/crittercism/internal/ax$4;

    invoke-direct {v0, p0, p0}, Lcom/crittercism/internal/ax$4;-><init>(Lcom/crittercism/internal/ax;Lcom/crittercism/internal/ax;)V

    .line 1524
    iget-object v1, p0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/dg;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1525
    iget-object v1, p0, Lcom/crittercism/internal/ax;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1403
    .line 15304
    iget-object v2, p0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v2}, Lcom/crittercism/internal/dr;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15305
    const-string v2, "User has opted out of crittercism. generateRateMyAppAlertDialog returning null."

    .line 15307
    invoke-static {v2}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 1403
    :goto_0
    if-nez v1, :cond_5

    .line 1455
    :goto_1
    return-object v0

    .line 15311
    :cond_0
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 15312
    const-string v2, "Context object must be an instance of Activity for AlertDialog to form correctly.  generateRateMyAppAlertDialog returning null."

    invoke-static {v2}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 15316
    :cond_1
    if-eqz p3, :cond_2

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 15317
    :cond_2
    const-string v2, "Message has to be a non-empty string.  generateRateMyAppAlertDialog returning null."

    invoke-static {v2}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 15322
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_4

    .line 15323
    const-string v2, "Rate my app not supported below api level 5"

    invoke-static {v2}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 15326
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 1407
    :cond_5
    invoke-virtual {p0}, Lcom/crittercism/internal/ax;->F()Ljava/lang/String;

    move-result-object v1

    .line 1408
    if-nez v1, :cond_6

    .line 1409
    const-string v1, "Cannot create proper URI to open app market.  Returning null."

    invoke-static {v1}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1413
    :cond_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1414
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1419
    :try_start_0
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1425
    const/4 v2, -0x1

    const-string v3, "Yes"

    new-instance v4, Lcom/crittercism/internal/ax$12;

    invoke-direct {v4, p0, v1}, Lcom/crittercism/internal/ax$12;-><init>(Lcom/crittercism/internal/ax;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1435
    const/4 v1, -0x2

    const-string v2, "No"

    new-instance v3, Lcom/crittercism/internal/ax$13;

    invoke-direct {v3, p0}, Lcom/crittercism/internal/ax$13;-><init>(Lcom/crittercism/internal/ax;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1445
    const/4 v1, -0x3

    const-string v2, "Maybe Later"

    new-instance v3, Lcom/crittercism/internal/ax$2;

    invoke-direct {v3, p0}, Lcom/crittercism/internal/ax$2;-><init>(Lcom/crittercism/internal/ax;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 1421
    :catch_0
    move-exception v1

    const-string v1, "Failed to create AlertDialog instance from AlertDialog.Builder.  Did you remember to call Looper.prepare() before calling Crittercism.generateRateMyAppAlertDialog()?"

    invoke-static {v1}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/crittercism/internal/ax;->e:Ljava/lang/String;

    .line 919
    if-nez v0, :cond_0

    .line 920
    const-string v0, ""

    .line 923
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1108
    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1111
    if-eqz v1, :cond_0

    .line 1112
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1115
    :cond_0
    return-object v0
.end method

.method public final a(Landroid/webkit/WebView;)V
    .locals 6

    .prologue
    .line 646
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 647
    const-string v0, "Crittercism.instrumentWebView(WebView) not called on the UI thread. Skipping instrumentation"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    .line 9059
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v1, p0, Lcom/crittercism/internal/ax;->L:Ljava/util/Set;

    monitor-enter v1

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/ax;->L:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    monitor-exit v1

    goto :goto_0

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 677
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/crittercism/internal/ax;->L:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 679
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    new-instance v1, Lcom/crittercism/internal/ef;

    iget-object v0, p0, Lcom/crittercism/internal/ax;->v:Lcom/crittercism/internal/e;

    iget-object v2, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    invoke-direct {v1, p0, v0, v2}, Lcom/crittercism/internal/ef;-><init>(Lcom/crittercism/internal/ax;Lcom/crittercism/internal/e;Landroid/content/Context;)V

    .line 9046
    :try_start_2
    new-instance v0, Lcom/crittercism/internal/ee;

    invoke-direct {v0}, Lcom/crittercism/internal/ee;-><init>()V
    :try_end_2
    .catch Lcom/crittercism/internal/cj; {:try_start_2 .. :try_end_2} :catch_0

    .line 10037
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v0, v2, :cond_3

    .line 10039
    invoke-static {p1}, Lcom/crittercism/internal/ee;->a(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;
    :try_end_3
    .catch Lcom/crittercism/internal/cj; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 9062
    :goto_1
    new-instance v2, Lcom/crittercism/internal/ed;

    iget-object v3, v1, Lcom/crittercism/internal/ef;->b:Lcom/crittercism/internal/e;

    iget-object v4, v1, Lcom/crittercism/internal/ef;->c:Lcom/crittercism/internal/d;

    iget-object v5, v1, Lcom/crittercism/internal/ef;->d:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/crittercism/internal/ed;-><init>(Landroid/webkit/WebViewClient;Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;Ljava/lang/String;)V

    .line 9065
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 9066
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9067
    new-instance v0, Lcom/crittercism/webview/CritterJSInterface;

    iget-object v1, v1, Lcom/crittercism/internal/ef;->a:Lcom/crittercism/internal/ax;

    invoke-direct {v0, v1}, Lcom/crittercism/webview/CritterJSInterface;-><init>(Lcom/crittercism/internal/ax;)V

    .line 9068
    const-string v1, "_crttr"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 9048
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/crittercism/internal/cj;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 10040
    :cond_3
    :try_start_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v0, v2, :cond_4

    .line 10042
    invoke-static {p1}, Lcom/crittercism/internal/ee;->b(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    goto :goto_1

    .line 10045
    :cond_4
    invoke-static {p1}, Lcom/crittercism/internal/ee;->c(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;
    :try_end_4
    .catch Lcom/crittercism/internal/cj; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_1

    .line 9056
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    .line 9057
    const-string v0, "Failed to find WebViewClient. WebView will not be instrumented."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/crittercism/internal/bf;)V
    .locals 6

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/crittercism/internal/ax;->y:Lcom/crittercism/internal/bg;

    if-nez v0, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    invoke-static {p1}, Lcom/crittercism/internal/be;->a(Lcom/crittercism/internal/bf;)V

    .line 1138
    invoke-static {}, Lcom/crittercism/internal/be;->i()V

    .line 12091
    iget-boolean v0, p1, Lcom/crittercism/internal/bf;->a:Z

    .line 1140
    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/crittercism/internal/ax;->y:Lcom/crittercism/internal/bg;

    .line 12095
    iget v1, p1, Lcom/crittercism/internal/bf;->b:I

    .line 1141
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12156
    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/crittercism/internal/bg;->a:J

    .line 1142
    iget-object v0, p0, Lcom/crittercism/internal/ax;->y:Lcom/crittercism/internal/bg;

    .line 13132
    iget-object v0, v0, Lcom/crittercism/internal/bg;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0
.end method

.method public final a(Lcom/crittercism/internal/c;)V
    .locals 2

    .prologue
    .line 883
    new-instance v0, Lcom/crittercism/internal/ax$10;

    invoke-direct {v0, p0, p1}, Lcom/crittercism/internal/ax$10;-><init>(Lcom/crittercism/internal/ax;Lcom/crittercism/internal/c;)V

    .line 889
    iget-object v1, p0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/dg;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 890
    iget-object v1, p0, Lcom/crittercism/internal/ax;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 892
    :cond_0
    return-void
.end method

.method public final a(Lcom/crittercism/internal/cg;)V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    new-instance v0, Lcom/crittercism/internal/ax$11;

    invoke-direct {v0, p0, p1}, Lcom/crittercism/internal/ax$11;-><init>(Lcom/crittercism/internal/ax;Lcom/crittercism/internal/cg;)V

    .line 906
    iget-object v1, p0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/dg;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 907
    iget-object v1, p0, Lcom/crittercism/internal/ax;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/crittercism/internal/h;)V
    .locals 6

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/crittercism/internal/ax;->p:Lcom/crittercism/internal/g;

    if-nez v0, :cond_1

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 13277
    :cond_1
    iget-boolean v0, p1, Lcom/crittercism/internal/h;->a:Z

    .line 1168
    if-eqz v0, :cond_0

    .line 13294
    iget-boolean v0, p1, Lcom/crittercism/internal/h;->c:Z

    .line 1168
    if-nez v0, :cond_0

    .line 1169
    const-string v0, "Enabling Service Monitoring"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;)V

    .line 1170
    iget-object v0, p0, Lcom/crittercism/internal/ax;->p:Lcom/crittercism/internal/g;

    .line 13314
    iget v1, p1, Lcom/crittercism/internal/h;->d:I

    .line 1170
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13475
    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/crittercism/internal/g;->b:J

    .line 1171
    iget-object v0, p0, Lcom/crittercism/internal/ax;->p:Lcom/crittercism/internal/g;

    .line 14210
    iget-object v0, v0, Lcom/crittercism/internal/g;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/dg;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/crittercism/internal/ax;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 711
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 862
    iget-object v0, p0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    new-instance v0, Lcom/crittercism/internal/cd;

    sget v1, Lcom/crittercism/internal/cd$a;->a:I

    invoke-direct {v0, p1, v1}, Lcom/crittercism/internal/cd;-><init>(Ljava/lang/String;I)V

    .line 868
    new-instance v1, Lcom/crittercism/internal/ax$9;

    invoke-direct {v1, p0, v0}, Lcom/crittercism/internal/ax$9;-><init>(Lcom/crittercism/internal/ax;Lcom/crittercism/internal/cd;)V

    .line 875
    iget-object v0, p0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/dg;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SENDING "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " TO EXECUTOR"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/crittercism/internal/ax;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1623
    iget-boolean v0, p0, Lcom/crittercism/internal/ax;->s:Z

    if-eqz v0, :cond_0

    .line 1624
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transactions are not supported for services. Ignoring Crittercism.setTransactionValue() call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 1634
    :goto_0
    return-void

    .line 1629
    :cond_0
    iget-object v1, p0, Lcom/crittercism/internal/ax;->z:Ljava/util/Map;

    monitor-enter v1

    .line 1630
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/ax;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/app/Transaction;

    .line 1631
    if-eqz v0, :cond_1

    .line 1632
    invoke-virtual {v0, p2}, Lcom/crittercism/app/Transaction;->a(I)V

    .line 1634
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1194
    if-eqz v0, :cond_0

    .line 1195
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1196
    if-eqz v0, :cond_0

    .line 1197
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1198
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1202
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JJJIIJ)V
    .locals 17

    .prologue
    .line 543
    new-instance v13, Lcom/crittercism/internal/ax$6;

    move-object/from16 v0, p0

    move/from16 v1, p10

    invoke-direct {v13, v0, v1}, Lcom/crittercism/internal/ax$6;-><init>(Lcom/crittercism/internal/ax;I)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move-wide/from16 v14, p11

    .line 556
    invoke-virtual/range {v3 .. v15}, Lcom/crittercism/internal/ax;->a(Ljava/lang/String;Ljava/lang/String;JJJILcom/crittercism/internal/ax$b;J)V

    .line 559
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JJJILcom/crittercism/internal/ax$b;J)V
    .locals 7

    .prologue
    .line 566
    if-nez p1, :cond_0

    .line 567
    const-string v2, "Null HTTP request method provided. Endpoint will not be logged."

    invoke-static {v2}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    .line 643
    :goto_0
    return-void

    .line 570
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 571
    invoke-static {v2}, Lcom/crittercism/internal/c;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Logging endpoint with invalid HTTP request method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 577
    :cond_1
    if-nez p2, :cond_2

    .line 578
    const-string v2, "Null url provided. Endpoint will not be logged"

    invoke-static {v2}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v3, p5, v4

    if-ltz v3, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v3, p7, v4

    if-gez v3, :cond_4

    .line 583
    :cond_3
    const-string v2, "Invalid byte values. Bytes need to be non-negative. Endpoint will not be logged."

    invoke-static {v2}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :cond_4
    if-eqz p9, :cond_7

    .line 588
    const/16 v3, 0x64

    move/from16 v0, p9

    if-lt v0, v3, :cond_5

    const/16 v3, 0x258

    move/from16 v0, p9

    if-lt v0, v3, :cond_6

    .line 589
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Logging endpoint with invalid HTTP response code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 600
    :cond_6
    :goto_1
    new-instance v3, Lcom/crittercism/internal/d;

    iget-object v4, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/crittercism/internal/d;-><init>(Landroid/content/Context;)V

    .line 602
    invoke-virtual {v3}, Lcom/crittercism/internal/d;->a()Lcom/crittercism/internal/b;

    move-result-object v3

    .line 609
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-gez v4, :cond_8

    .line 610
    const-string v2, "Invalid latency. Endpoint will not be logged."

    invoke-static {v2}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :cond_7
    invoke-interface/range {p10 .. p10}, Lcom/crittercism/internal/ax$b;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 593
    const-string v3, "Logging endpoint with null error and response code of 0."

    invoke-static {v3}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 616
    :cond_8
    const-wide/16 v4, 0x0

    cmp-long v4, p11, v4

    if-gez v4, :cond_9

    .line 617
    const-string v2, "Invalid start time. Endpoint will not be logged."

    invoke-static {v2}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 621
    :cond_9
    new-instance v4, Lcom/crittercism/internal/c;

    invoke-direct {v4}, Lcom/crittercism/internal/c;-><init>()V

    .line 7331
    iput-object v2, v4, Lcom/crittercism/internal/c;->f:Ljava/lang/String;

    .line 623
    invoke-virtual {v4, p2}, Lcom/crittercism/internal/c;->a(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v4, p5, p6}, Lcom/crittercism/internal/c;->a(J)V

    .line 625
    invoke-virtual {v4, p7, p8}, Lcom/crittercism/internal/c;->b(J)V

    .line 8180
    move/from16 v0, p9

    iput v0, v4, Lcom/crittercism/internal/c;->e:I

    .line 8281
    iput-object v3, v4, Lcom/crittercism/internal/c;->j:Lcom/crittercism/internal/b;

    .line 628
    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Lcom/crittercism/internal/c;->c(J)V

    .line 629
    add-long v2, p11, p3

    invoke-virtual {v4, v2, v3}, Lcom/crittercism/internal/c;->d(J)V

    .line 634
    invoke-static {}, Lcom/crittercism/internal/ba;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 635
    invoke-static {}, Lcom/crittercism/internal/ba;->a()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/crittercism/internal/c;->a(Landroid/location/Location;)V

    .line 639
    :cond_a
    move-object/from16 v0, p10

    invoke-interface {v0, v4}, Lcom/crittercism/internal/ax$b;->a(Lcom/crittercism/internal/c;)V

    .line 640
    iget-object v2, p0, Lcom/crittercism/internal/ax;->v:Lcom/crittercism/internal/e;

    sget-object v3, Lcom/crittercism/internal/c$a;->l:Lcom/crittercism/internal/c$a;

    invoke-virtual {v2, v4, v3}, Lcom/crittercism/internal/e;->a(Lcom/crittercism/internal/c;Lcom/crittercism/internal/c$a;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1121
    if-eqz v0, :cond_0

    .line 1122
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1123
    if-eqz v0, :cond_0

    .line 1124
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1125
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1129
    :cond_0
    return-void
.end method

.method final a(Ljava/lang/Throwable;)V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 440
    instance-of v0, p1, Lcom/crittercism/internal/cp;

    invoke-static {p0, v0}, Lcom/crittercism/internal/be;->a(Lcom/crittercism/internal/ax;Z)Ljava/util/List;

    move-result-object v2

    .line 442
    new-instance v3, Lcom/crittercism/internal/bi;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-direct {v3, p1, v0, v1}, Lcom/crittercism/internal/bi;-><init>(Ljava/lang/Throwable;J)V

    .line 443
    const-string v0, "crashed_session"

    iget-object v1, p0, Lcom/crittercism/internal/ax;->i:Lcom/crittercism/internal/bq;

    invoke-virtual {v3, v0, v1}, Lcom/crittercism/internal/bi;->a(Ljava/lang/String;Lcom/crittercism/internal/bq;)V

    .line 445
    iget-object v0, p0, Lcom/crittercism/internal/ax;->I:Lcom/crittercism/internal/bq;

    invoke-virtual {v0}, Lcom/crittercism/internal/bq;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 446
    const-string v0, "previous_session"

    iget-object v1, p0, Lcom/crittercism/internal/ax;->I:Lcom/crittercism/internal/bq;

    invoke-virtual {v3, v0, v1}, Lcom/crittercism/internal/bi;->a(Ljava/lang/String;Lcom/crittercism/internal/bq;)V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/ax;->j:Lcom/crittercism/internal/bq;

    invoke-virtual {v3, v0}, Lcom/crittercism/internal/bi;->a(Lcom/crittercism/internal/bq;)V

    .line 450
    iget-object v0, p0, Lcom/crittercism/internal/ax;->k:Lcom/crittercism/internal/bq;

    invoke-virtual {v3, v0}, Lcom/crittercism/internal/bi;->b(Lcom/crittercism/internal/bq;)V

    .line 2206
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, v3, Lcom/crittercism/internal/bi;->d:Lorg/json/JSONArray;

    .line 2207
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 2208
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2209
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 2211
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    iget-wide v10, v3, Lcom/crittercism/internal/bi;->a:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    .line 2212
    const-string v7, "name"

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    const-string v7, "id"

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2214
    const-string v7, "state"

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2215
    const-string v1, "stacktrace"

    new-instance v7, Lorg/json/JSONArray;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    iget-object v0, v3, Lcom/crittercism/internal/bi;->d:Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 452
    :cond_2
    invoke-virtual {v3, v2}, Lcom/crittercism/internal/bi;->a(Ljava/util/List;)V

    .line 453
    iget-object v0, p0, Lcom/crittercism/internal/ax;->H:Lcom/crittercism/internal/bq;

    invoke-virtual {v0, v3}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z

    .line 455
    new-instance v0, Lcom/crittercism/internal/df;

    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/crittercism/internal/df;-><init>(Landroid/content/Context;)V

    .line 3000
    iget-object v1, p0, Lcom/crittercism/internal/ax;->E:Lcom/crittercism/internal/bq;

    .line 456
    new-instance v2, Lcom/crittercism/internal/da$a;

    invoke-direct {v2}, Lcom/crittercism/internal/da$a;-><init>()V

    iget-object v3, p0, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    .line 3096
    iget-object v3, v3, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 4089
    iget-object v3, v3, Lcom/crittercism/internal/bl;->d:Ljava/lang/String;

    .line 456
    const-string v4, "/v0/appload"

    new-instance v7, Lcom/crittercism/internal/cs$b;

    invoke-direct {v7}, Lcom/crittercism/internal/cs$b;-><init>()V

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/crittercism/internal/df;->a(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/cx;)V

    .line 5004
    iget-object v1, p0, Lcom/crittercism/internal/ax;->h:Lcom/crittercism/internal/bq;

    .line 465
    new-instance v2, Lcom/crittercism/internal/da$a;

    invoke-direct {v2}, Lcom/crittercism/internal/da$a;-><init>()V

    iget-object v3, p0, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    .line 5072
    iget-object v3, v3, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 5081
    iget-object v3, v3, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 465
    const-string v4, "/android_v2/handle_exceptions"

    new-instance v7, Lcom/crittercism/internal/cu$a;

    invoke-direct {v7}, Lcom/crittercism/internal/cu$a;-><init>()V

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/crittercism/internal/df;->a(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/cx;)V

    .line 6012
    iget-object v1, p0, Lcom/crittercism/internal/ax;->G:Lcom/crittercism/internal/bq;

    .line 474
    new-instance v2, Lcom/crittercism/internal/da$a;

    invoke-direct {v2}, Lcom/crittercism/internal/da$a;-><init>()V

    iget-object v3, p0, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    .line 6072
    iget-object v3, v3, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 6081
    iget-object v3, v3, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 474
    const-string v4, "/android_v2/handle_ndk_crashes"

    new-instance v7, Lcom/crittercism/internal/cu$a;

    invoke-direct {v7}, Lcom/crittercism/internal/cu$a;-><init>()V

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/crittercism/internal/df;->a(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/cx;)V

    .line 7016
    iget-object v1, p0, Lcom/crittercism/internal/ax;->H:Lcom/crittercism/internal/bq;

    .line 483
    new-instance v2, Lcom/crittercism/internal/da$a;

    invoke-direct {v2}, Lcom/crittercism/internal/da$a;-><init>()V

    iget-object v3, p0, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    .line 7072
    iget-object v3, v3, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    .line 7081
    iget-object v3, v3, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    .line 483
    const-string v4, "/android_v2/handle_crashes"

    new-instance v7, Lcom/crittercism/internal/cu$a;

    invoke-direct {v7}, Lcom/crittercism/internal/cu$a;-><init>()V

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/crittercism/internal/df;->a(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/cx;)V

    .line 493
    :try_start_0
    invoke-virtual {v0}, Lcom/crittercism/internal/df;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 503
    :goto_1
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InterruptedException in logCrashException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 496
    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 498
    :catch_1
    move-exception v0

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected throwable in logCrashException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 500
    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 1469
    iget-boolean v0, p0, Lcom/crittercism/internal/ax;->s:Z

    if-eqz v0, :cond_1

    .line 1495
    :cond_0
    :goto_0
    return-void

    .line 1475
    :cond_1
    new-instance v0, Lcom/crittercism/internal/ax$3;

    invoke-direct {v0, p0, p0, p1}, Lcom/crittercism/internal/ax$3;-><init>(Lcom/crittercism/internal/ax;Lcom/crittercism/internal/ax;Lorg/json/JSONObject;)V

    .line 1491
    iget-object v1, p0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/dg;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1492
    iget-object v1, p0, Lcom/crittercism/internal/ax;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1182
    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1185
    if-eqz v1, :cond_0

    .line 1186
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1189
    :cond_0
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/crittercism/internal/ax;->J:Lcom/crittercism/internal/aq;

    .line 15040
    iget-object v0, v0, Lcom/crittercism/internal/aq;->a:Ljava/lang/String;

    .line 1247
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/crittercism/internal/ax;->A:Lcom/crittercism/internal/ds;

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/crittercism/internal/ax;->A:Lcom/crittercism/internal/ds;

    invoke-virtual {v0}, Lcom/crittercism/internal/ds;->d()V

    .line 1283
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1284
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1285
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1286
    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1287
    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 738
    monitor-enter p0

    if-nez p1, :cond_1

    .line 739
    :try_start_0
    const-string v0, "Calling logHandledException with a null java.lang.Throwable. Nothing will be reported to Crittercism"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 743
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/crittercism/internal/ax;->s:Z

    if-eqz v0, :cond_2

    .line 10751
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 10753
    new-instance v2, Lcom/crittercism/internal/ax$7;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/crittercism/internal/ax$7;-><init>(Lcom/crittercism/internal/ax;Ljava/lang/Throwable;J)V

    .line 10796
    iget-object v0, p0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    invoke-virtual {v0, v2}, Lcom/crittercism/internal/dg;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10797
    iget-object v0, p0, Lcom/crittercism/internal/ax;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 738
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 10802
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 10804
    new-instance v2, Lcom/crittercism/internal/ax$8;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/crittercism/internal/ax$8;-><init>(Lcom/crittercism/internal/ax;Ljava/lang/Throwable;J)V

    .line 10856
    iget-object v0, p0, Lcom/crittercism/internal/ax;->o:Lcom/crittercism/internal/dg;

    invoke-virtual {v0, v2}, Lcom/crittercism/internal/dg;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10857
    iget-object v0, p0, Lcom/crittercism/internal/ax;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 929
    const-string v0, ""

    .line 931
    iget-object v1, p0, Lcom/crittercism/internal/ax;->w:Lcom/crittercism/internal/dq;

    if-eqz v1, :cond_0

    .line 932
    iget-object v0, p0, Lcom/crittercism/internal/ax;->w:Lcom/crittercism/internal/dq;

    invoke-virtual {v0}, Lcom/crittercism/internal/dq;->a()Ljava/lang/String;

    move-result-object v0

    .line 935
    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1536
    iget-boolean v0, p0, Lcom/crittercism/internal/ax;->s:Z

    if-eqz v0, :cond_1

    .line 1537
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transactions are not supported for services. Ignoring Crittercism.beginTransaction() call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 1565
    :cond_0
    :goto_0
    return-void

    .line 1545
    :cond_1
    invoke-static {p1}, Lcom/crittercism/app/Transaction;->a(Ljava/lang/String;)Lcom/crittercism/app/Transaction;

    move-result-object v1

    .line 1546
    instance-of v0, v1, Lcom/crittercism/internal/be;

    if-eqz v0, :cond_0

    .line 1548
    iget-object v2, p0, Lcom/crittercism/internal/ax;->z:Ljava/util/Map;

    monitor-enter v2

    .line 1549
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/ax;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/app/Transaction;

    .line 1550
    if-eqz v0, :cond_2

    .line 1551
    check-cast v0, Lcom/crittercism/internal/be;

    .line 1552
    invoke-virtual {v0}, Lcom/crittercism/internal/be;->d()V

    .line 1555
    :cond_2
    iget-object v0, p0, Lcom/crittercism/internal/ax;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v3, 0x32

    if-le v0, v3, :cond_3

    .line 1556
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Crittercism only supports a maximum of 50 concurrent transactions. Ignoring Crittercism.beginTransaction() call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 1558
    monitor-exit v2

    goto :goto_0

    .line 1563
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1561
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/crittercism/internal/ax;->z:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    invoke-virtual {v1}, Lcom/crittercism/app/Transaction;->a()V

    .line 1563
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1205
    iget-object v1, p0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1208
    if-eqz v1, :cond_0

    .line 1209
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1212
    :cond_0
    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1257
    const-string v0, "5.6.4"

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1569
    iget-boolean v0, p0, Lcom/crittercism/internal/ax;->s:Z

    if-eqz v0, :cond_1

    .line 1570
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transactions are not supported for services. Ignoring Crittercism.endTransaction() call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1576
    :cond_1
    iget-object v1, p0, Lcom/crittercism/internal/ax;->z:Ljava/util/Map;

    monitor-enter v1

    .line 1577
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/ax;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/app/Transaction;

    .line 1578
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1580
    if-eqz v0, :cond_0

    .line 1581
    invoke-virtual {v0}, Lcom/crittercism/app/Transaction;->b()V

    goto :goto_0

    .line 1578
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 964
    const/4 v0, -0x1

    .line 965
    iget-object v1, p0, Lcom/crittercism/internal/ax;->D:Lcom/crittercism/internal/dv;

    if-eqz v1, :cond_0

    .line 966
    iget-object v0, p0, Lcom/crittercism/internal/ax;->D:Lcom/crittercism/internal/dv;

    invoke-virtual {v0}, Lcom/crittercism/internal/dv;->a()Lcom/crittercism/internal/dt;

    move-result-object v0

    .line 12034
    iget v0, v0, Lcom/crittercism/internal/dt;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 966
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 968
    :cond_0
    return v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1587
    iget-boolean v0, p0, Lcom/crittercism/internal/ax;->s:Z

    if-eqz v0, :cond_1

    .line 1588
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transactions are not supported for services. Ignoring Crittercism.failTransaction() call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 1601
    :cond_0
    :goto_0
    return-void

    .line 1594
    :cond_1
    iget-object v1, p0, Lcom/crittercism/internal/ax;->z:Ljava/util/Map;

    monitor-enter v1

    .line 1595
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/ax;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/app/Transaction;

    .line 1596
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1598
    if-eqz v0, :cond_0

    .line 1599
    invoke-virtual {v0}, Lcom/crittercism/app/Transaction;->c()V

    goto :goto_0

    .line 1596
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 945
    new-instance v0, Lcom/crittercism/internal/bv$f;

    invoke-direct {v0}, Lcom/crittercism/internal/bv$f;-><init>()V

    .line 11148
    iget-object v0, v0, Lcom/crittercism/internal/bv$f;->a:Ljava/lang/String;

    .line 945
    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1605
    iget-boolean v0, p0, Lcom/crittercism/internal/ax;->s:Z

    if-eqz v0, :cond_1

    .line 1606
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transactions are not supported for services. Ignoring cancelTransaction() call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1608
    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 1619
    :cond_0
    :goto_0
    return-void

    .line 1612
    :cond_1
    iget-object v1, p0, Lcom/crittercism/internal/ax;->z:Ljava/util/Map;

    monitor-enter v1

    .line 1613
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/ax;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/app/Transaction;

    .line 1614
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1616
    if-eqz v0, :cond_0

    .line 1617
    invoke-virtual {v0}, Lcom/crittercism/app/Transaction;->d()V

    goto :goto_0

    .line 1614
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 950
    new-instance v0, Lcom/crittercism/internal/bv$o;

    invoke-direct {v0}, Lcom/crittercism/internal/bv$o;-><init>()V

    .line 11173
    iget-object v0, v0, Lcom/crittercism/internal/bv$o;->a:Ljava/lang/Integer;

    .line 950
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final g(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1638
    .line 1640
    iget-boolean v0, p0, Lcom/crittercism/internal/ax;->s:Z

    if-eqz v0, :cond_0

    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Transactions are not supported for services. Returning default value of -1 for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    move v0, v1

    .line 1652
    :goto_0
    return v0

    .line 1646
    :cond_0
    iget-object v2, p0, Lcom/crittercism/internal/ax;->z:Ljava/util/Map;

    monitor-enter v2

    .line 1647
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/ax;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/app/Transaction;

    .line 1648
    if-eqz v0, :cond_1

    .line 1649
    invoke-virtual {v0}, Lcom/crittercism/app/Transaction;->a_()I

    move-result v0

    .line 1651
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 955
    new-instance v0, Lcom/crittercism/internal/bv$p;

    invoke-direct {v0}, Lcom/crittercism/internal/bv$p;-><init>()V

    .line 11198
    iget-object v0, v0, Lcom/crittercism/internal/bv$p;->a:Ljava/lang/Integer;

    .line 955
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1262
    const-string v0, "Android"

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1267
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1272
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Lcom/crittercism/internal/dv;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/crittercism/internal/ax;->D:Lcom/crittercism/internal/dv;

    return-object v0
.end method

.method public final m()Lcom/crittercism/internal/dr;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    return-object v0
.end method

.method public final n()Lcom/crittercism/internal/ds;
    .locals 1

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/crittercism/internal/ax;->A:Lcom/crittercism/internal/ds;

    return-object v0
.end method

.method public final o()Lcom/crittercism/internal/bq;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/crittercism/internal/ax;->E:Lcom/crittercism/internal/bq;

    return-object v0
.end method

.method public final p()Lcom/crittercism/internal/bq;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/crittercism/internal/ax;->h:Lcom/crittercism/internal/bq;

    return-object v0
.end method

.method public final q()Lcom/crittercism/internal/bq;
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/crittercism/internal/ax;->F:Lcom/crittercism/internal/bq;

    return-object v0
.end method

.method public final r()Lcom/crittercism/internal/bq;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/crittercism/internal/ax;->G:Lcom/crittercism/internal/bq;

    return-object v0
.end method

.method public final s()Lcom/crittercism/internal/bq;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/crittercism/internal/ax;->H:Lcom/crittercism/internal/bq;

    return-object v0
.end method

.method public final t()Lcom/crittercism/internal/bq;
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/crittercism/internal/ax;->i:Lcom/crittercism/internal/bq;

    return-object v0
.end method

.method public final u()Lcom/crittercism/internal/bq;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/crittercism/internal/ax;->j:Lcom/crittercism/internal/bq;

    return-object v0
.end method

.method public final v()Lcom/crittercism/internal/bq;
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/crittercism/internal/ax;->I:Lcom/crittercism/internal/bq;

    return-object v0
.end method

.method public final w()Lcom/crittercism/internal/bq;
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/crittercism/internal/ax;->k:Lcom/crittercism/internal/bq;

    return-object v0
.end method

.method public final x()Lcom/crittercism/internal/bq;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/crittercism/internal/ax;->l:Lcom/crittercism/internal/bq;

    return-object v0
.end method

.method public final y()Lcom/crittercism/internal/bq;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/crittercism/internal/ax;->m:Lcom/crittercism/internal/bq;

    return-object v0
.end method

.method public final z()Lcom/crittercism/internal/du;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/crittercism/internal/ax;->x:Lcom/crittercism/internal/du;

    return-object v0
.end method
