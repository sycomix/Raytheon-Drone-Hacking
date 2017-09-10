.class public final Lcom/crittercism/internal/ap;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/crittercism/internal/bk;

.field public b:Z

.field public c:Lcom/crittercism/internal/az;

.field public d:Lcom/crittercism/internal/dr;

.field public e:Landroid/content/Context;

.field public f:Lcom/crittercism/internal/ax;

.field private volatile g:Z


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/az;Lcom/crittercism/internal/dr;Landroid/content/Context;Lcom/crittercism/internal/ax;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/crittercism/internal/ap;->g:Z

    .line 24
    iput-boolean v0, p0, Lcom/crittercism/internal/ap;->b:Z

    .line 35
    iput-object p1, p0, Lcom/crittercism/internal/ap;->c:Lcom/crittercism/internal/az;

    .line 36
    iput-object p2, p0, Lcom/crittercism/internal/ap;->d:Lcom/crittercism/internal/dr;

    .line 37
    iput-object p3, p0, Lcom/crittercism/internal/ap;->e:Landroid/content/Context;

    .line 38
    iput-object p4, p0, Lcom/crittercism/internal/ap;->f:Lcom/crittercism/internal/ax;

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 232
    :try_start_0
    invoke-static {p0}, Lcom/crittercism/internal/ap;->b(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 238
    :goto_0
    return v0

    .line 234
    :catch_0
    move-exception v0

    throw v0

    .line 235
    :catch_1
    move-exception v0

    .line 236
    const-string v1, "Could not find number of visible Activities. Please report this to support@crittercism.com"

    invoke-static {v1, v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 249
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move v0, v1

    .line 305
    :goto_0
    return v0

    .line 255
    :cond_0
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 263
    :try_start_1
    const-string v3, "currentActivityThread"

    .line 1332
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1334
    if-nez v4, :cond_1

    .line 1335
    new-instance v0, Ljava/lang/NoSuchMethodError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "no method: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    move v0, v2

    .line 268
    goto :goto_0

    .line 257
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    move v0, v2

    .line 258
    goto :goto_0

    .line 1337
    :cond_1
    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1338
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    .line 1341
    if-nez v5, :cond_2

    .line 1342
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not return a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    .line 273
    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_3
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v3

    .line 281
    if-nez v3, :cond_3

    .line 282
    const-string v0, "cannot retrieve current ActivityThread"

    .line 283
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    move v0, v2

    .line 284
    goto :goto_0

    .line 275
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    move v0, v2

    .line 276
    goto :goto_0

    .line 278
    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    move v0, v2

    .line 279
    goto/16 :goto_0

    .line 289
    :cond_3
    :try_start_4
    const-string v4, "mNumVisibleActivities"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2313
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2315
    if-nez v0, :cond_4

    .line 2316
    new-instance v0, Ljava/lang/NoSuchFieldError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "no field: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_4

    .line 292
    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    move v0, v2

    .line 293
    goto/16 :goto_0

    .line 2318
    :cond_4
    const/4 v6, 0x1

    :try_start_5
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2319
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    .line 2322
    if-nez v6, :cond_5

    .line 2323
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not a "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_4

    .line 298
    :cond_5
    :try_start_6
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_5

    .line 305
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    goto/16 :goto_0

    .line 300
    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    move v0, v2

    .line 301
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 305
    goto/16 :goto_0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/crittercism/internal/ap;->g:Z

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    .line 83
    :cond_0
    monitor-enter p0

    .line 86
    :try_start_0
    iget-boolean v0, p0, Lcom/crittercism/internal/ap;->g:Z

    monitor-exit p0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/crittercism/internal/au;Landroid/content/Context;Lcom/crittercism/internal/az;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/ax;)Ljava/lang/Runnable;
    .locals 7

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/crittercism/internal/ap;->c()V

    .line 147
    new-instance v0, Lcom/crittercism/internal/ap$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/crittercism/internal/ap$1;-><init>(Lcom/crittercism/internal/ap;Lcom/crittercism/internal/au;Lcom/crittercism/internal/az;Landroid/content/Context;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/ax;)V

    .line 178
    return-object v0
.end method

.method public final a()V
    .locals 6

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/crittercism/internal/ap;->b()V

    .line 61
    invoke-virtual {p0}, Lcom/crittercism/internal/ap;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/crittercism/internal/ap;->f:Lcom/crittercism/internal/ax;

    iget-object v2, p0, Lcom/crittercism/internal/ap;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/crittercism/internal/ap;->c:Lcom/crittercism/internal/az;

    iget-object v4, p0, Lcom/crittercism/internal/ap;->f:Lcom/crittercism/internal/ax;

    iget-object v5, p0, Lcom/crittercism/internal/ap;->f:Lcom/crittercism/internal/ax;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/au;Landroid/content/Context;Lcom/crittercism/internal/az;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/ax;)Ljava/lang/Runnable;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/crittercism/internal/ap;->f:Lcom/crittercism/internal/ax;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/ax;->a(Ljava/lang/Runnable;)V

    .line 65
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/crittercism/internal/ap;->b:Z

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/ap;->b:Z

    .line 70
    iget-object v0, p0, Lcom/crittercism/internal/ap;->f:Lcom/crittercism/internal/ax;

    .line 1301
    invoke-static {v0}, Lcom/crittercism/internal/be;->b(Lcom/crittercism/internal/ax;)V

    .line 1302
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1305
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1306
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 1307
    new-instance v1, Lcom/crittercism/internal/ax$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/crittercism/internal/ax$c;-><init>(B)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 72
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/crittercism/internal/ap;->g:Z

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    monitor-enter p0

    .line 97
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/crittercism/internal/ap;->g:Z

    .line 98
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Lcom/crittercism/internal/ap;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "not sending a new app load - already sent"

    invoke-static {v1}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 134
    :goto_0
    return v0

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/crittercism/internal/ap;->c:Lcom/crittercism/internal/az;

    invoke-virtual {v1}, Lcom/crittercism/internal/az;->delaySendingAppLoad()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const-string v1, "not sending a new app load - customer asked for delay"

    invoke-static {v1}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-boolean v1, p0, Lcom/crittercism/internal/ap;->b:Z

    if-nez v1, :cond_2

    .line 125
    const-string v1, "not sending a new app load - have not seen one yet"

    invoke-static {v1}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
