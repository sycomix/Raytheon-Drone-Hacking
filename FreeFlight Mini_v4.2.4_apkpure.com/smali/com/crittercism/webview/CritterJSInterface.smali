.class public Lcom/crittercism/webview/CritterJSInterface;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/crittercism/internal/ax;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/ax;)V
    .locals 1
    .param p1, "instance"    # Lcom/crittercism/internal/ax;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_0

    .line 26
    const-string v0, "CritterJSInterface"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    .line 29
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/crittercism/webview/CritterJSInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "() badly initialized: null instance."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 586
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "negative long integer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-static {p0, p1, v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 542
    if-nez p0, :cond_1

    .line 17596
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17598
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/crittercism/webview/CritterJSInterface;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() given invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "parameter: null string or invalid javascript type. Request is being ignored..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17602
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v2}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 549
    :goto_1
    return v0

    .line 17596
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 545
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 17606
    const-string v0, "empty string"

    .line 17607
    invoke-static {p1, p2, v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 547
    goto :goto_1

    .line 549
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User has opted out of Crittercism. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/crittercism/webview/CritterJSInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "() call is being ignored..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 652
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/crittercism/webview/CritterJSInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() given invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Request is being ignored."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 658
    return-void

    .line 652
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public beginTransaction(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 192
    .line 4202
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    .line 4203
    const-string v0, "beginTransaction"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 4209
    :cond_0
    :goto_0
    return-void

    .line 4206
    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    .line 5025
    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 4207
    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4208
    const-string v0, "beginTransaction"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    throw v0

    .line 4211
    :cond_2
    :try_start_1
    const-string v0, "beginTransaction"

    const-string v1, "name"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4214
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/ax;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cancelTransaction(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 277
    .line 7286
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    .line 7287
    const-string v0, "cancelTransaction"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 7293
    :cond_0
    :goto_0
    return-void

    .line 7290
    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    .line 8025
    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 7291
    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7292
    const-string v0, "cancelTransaction"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    throw v0

    .line 7295
    :cond_2
    :try_start_1
    const-string v0, "cancelTransaction"

    const-string v1, "name"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7298
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/ax;->f(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 281
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public endTransaction(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 221
    .line 5231
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    .line 5232
    const-string v0, "endTransaction"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 5238
    :cond_0
    :goto_0
    return-void

    .line 5235
    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    .line 6025
    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 5236
    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5237
    const-string v0, "endTransaction"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    throw v0

    .line 5240
    :cond_2
    :try_start_1
    const-string v0, "endTransaction"

    const-string v1, "name"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5243
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/ax;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 225
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public failTransaction(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 249
    .line 6259
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    .line 6260
    const-string v0, "failTransaction"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 6266
    :cond_0
    :goto_0
    return-void

    .line 6263
    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    .line 7025
    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 6264
    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6265
    const-string v0, "failTransaction"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    throw v0

    .line 6268
    :cond_2
    :try_start_1
    const-string v0, "failTransaction"

    const-string v1, "name"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6271
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/ax;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 253
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getTransactionValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "transactionName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 332
    .line 9342
    :try_start_0
    iget-object v1, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v1, :cond_1

    .line 9343
    const-string v1, "getTransactionValue"

    invoke-static {v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 9352
    :cond_0
    :goto_0
    return v0

    .line 9346
    :cond_1
    iget-object v1, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    .line 10025
    iget-object v1, v1, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 9347
    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9348
    const-string v1, "getTransactionValue"

    invoke-static {v1}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    throw v0

    .line 9351
    :cond_2
    :try_start_1
    const-string v1, "getTransactionValue"

    const-string/jumbo v2, "transactionName"

    invoke-static {p1, v1, v2}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9354
    iget-object v1, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v1, p1}, Lcom/crittercism/internal/ax;->g(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 336
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public leaveBreadcrumb(Ljava/lang/String;)V
    .locals 2
    .param p1, "breadcrumb"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 164
    .line 3174
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    .line 3175
    const-string v0, "leaveBreadcrumb"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 3181
    :cond_0
    :goto_0
    return-void

    .line 3178
    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    .line 4025
    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 3179
    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3180
    const-string v0, "leaveBreadcrumb"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    throw v0

    .line 3183
    :cond_2
    :try_start_1
    const-string v0, "leaveBreadcrumb"

    const-string v1, "breadcrumb"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3186
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/ax;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "stackStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 35
    .line 1044
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    .line 1045
    const-string v0, "logError"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    const-string v1, ""

    .line 1071
    const-string v0, ""

    .line 1072
    const-string v2, ":"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1073
    array-length v3, v2

    if-lez v3, :cond_2

    .line 1074
    const/4 v1, 0x0

    aget-object v1, v2, v1

    const-string v3, "Uncaught "

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1075
    if-gez v1, :cond_4

    .line 1076
    const/4 v1, 0x0

    aget-object v1, v2, v1

    .line 1080
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1083
    :cond_2
    array-length v3, v2

    if-le v3, v4, :cond_3

    .line 1084
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1087
    :cond_3
    new-instance v2, Lcom/crittercism/internal/co;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, p2, v3}, Lcom/crittercism/internal/co;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1088
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v0, v2}, Lcom/crittercism/internal/ax;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    throw v0

    .line 1078
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    aget-object v1, v2, v1

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_1

    .line 39
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public logHandledException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "stackStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 94
    .line 1103
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    .line 1104
    const-string v0, "logHandledException"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    .line 2025
    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 1108
    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1109
    const-string v0, "logHandledException"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    throw v0

    .line 1112
    :cond_2
    :try_start_1
    const-string v0, "logHandledException"

    const-string v1, "name"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    const-string v0, "logHandledException"

    const-string v1, "reason"

    invoke-static {p2, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    const-string v0, "logHandledException"

    const-string v1, "stack"

    invoke-static {p3, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    new-instance v0, Lcom/crittercism/internal/co;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/crittercism/internal/co;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1123
    iget-object v1, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/ax;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public logNetworkRequest(Ljava/lang/String;Ljava/lang/String;JJJII)V
    .locals 17
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "latency"    # J
    .param p5, "bytesRead"    # J
    .param p7, "bytesSent"    # J
    .param p9, "responseCode"    # I
    .param p10, "errorCode"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 453
    .line 13462
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v2, :cond_1

    .line 13463
    const-string v2, "logNetworkRequest"

    invoke-static {v2}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 13483
    :cond_0
    :goto_0
    return-void

    .line 13466
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    .line 14025
    iget-object v2, v2, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 13467
    invoke-virtual {v2}, Lcom/crittercism/internal/dr;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13468
    const-string v2, "logNetworkRequest"

    invoke-static {v2}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 455
    :catch_0
    move-exception v2

    throw v2

    .line 13471
    :cond_2
    :try_start_1
    const-string v2, "logNetworkRequest"

    const-string v3, "httpMethod"

    .line 14500
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 14501
    const/4 v2, 0x0

    .line 13471
    :goto_1
    if-eqz v2, :cond_0

    .line 13474
    const-string v2, "logNetworkRequest"

    const-string/jumbo v3, "url"

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13477
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gez v2, :cond_6

    .line 13478
    const-string v2, "logNetworkRequest"

    const-string v3, "bytesRead"

    move-wide/from16 v0, p5

    invoke-static {v2, v3, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 457
    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 14503
    :cond_3
    const/16 v2, 0x9

    :try_start_2
    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "GET"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "HEAD"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string v4, "POST"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "PUT"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "DELETE"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "TRACE"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "CONNECT"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "OPTIONS"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "PATCH"

    aput-object v4, v3, v2

    .line 14506
    const/4 v2, 0x0

    :goto_2
    const/16 v4, 0x9

    if-ge v2, v4, :cond_5

    aget-object v4, v3, v2

    .line 14507
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 14508
    const/4 v2, 0x1

    goto :goto_1

    .line 14506
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 14512
    :cond_5
    const-string v2, "logNetworkRequest"

    const-string v3, "httpMethod"

    .line 14637
    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14513
    const/4 v2, 0x0

    goto :goto_1

    .line 13481
    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-gez v2, :cond_7

    .line 13482
    const-string v2, "logNetworkRequest"

    const-string v3, "bytesSent"

    move-wide/from16 v0, p7

    invoke-static {v2, v3, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 15517
    :cond_7
    if-gez p9, :cond_8

    .line 15518
    const-string v2, "logNetworkRequest"

    const-string v3, "responseCode"

    .line 15612
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "negative integer: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 15613
    invoke-static {v2, v3, v4}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15519
    const/4 v2, 0x0

    .line 13485
    :goto_3
    if-eqz v2, :cond_0

    .line 13489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, p3

    .line 13492
    const-string v2, "logNetworkRequest"

    const-string v3, "latency"

    .line 16563
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-gez v4, :cond_b

    .line 16564
    move-wide/from16 v0, p3

    invoke-static {v2, v3, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 16565
    const/4 v2, 0x0

    .line 13492
    :goto_4
    if-eqz v2, :cond_0

    .line 13495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v3 .. v15}, Lcom/crittercism/internal/ax;->a(Ljava/lang/String;Ljava/lang/String;JJJIIJ)V

    goto/16 :goto_0

    .line 15521
    :cond_8
    const/16 v2, 0x2a

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 15530
    const/4 v2, 0x0

    :goto_5
    const/16 v4, 0x2a

    if-ge v2, v4, :cond_a

    aget v4, v3, v2

    .line 15531
    move/from16 v0, p9

    if-ne v4, v0, :cond_9

    .line 15532
    const/4 v2, 0x1

    goto :goto_3

    .line 15530
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 15536
    :cond_a
    const-string v2, "logNetworkRequest"

    const-string v3, "responseCode"

    .line 15642
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "the given HTTP response is not allowed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 15643
    invoke-static {v2, v3, v4}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15537
    const/4 v2, 0x0

    goto :goto_3

    .line 16567
    :cond_b
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-gez v4, :cond_c

    .line 16624
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "excessively large long integer: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 16625
    invoke-static {v2, v3, v4}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 16569
    const/4 v2, 0x0

    goto :goto_4

    .line 16571
    :cond_c
    const/4 v2, 0x1

    goto :goto_4

    .line 15521
    nop

    :array_0
    .array-data 4
        0x0
        0x64
        0x65
        0xc8
        0xc9
        0xca
        0xcb
        0xcc
        0xcd
        0xce
        0x12c
        0x12d
        0x12e
        0x12f
        0x130
        0x131
        0x132
        0x133
        0x190
        0x191
        0x192
        0x193
        0x194
        0x195
        0x196
        0x197
        0x198
        0x199
        0x19a
        0x19b
        0x19c
        0x19d
        0x19e
        0x19f
        0x1a0
        0x1a1
        0x1f4
        0x1f5
        0x1f6
        0x1f7
        0x1f8
        0x1f9
    .end array-data
.end method

.method public logUnhandledException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "stackStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 129
    .line 2138
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    .line 2139
    const-string v0, "logUnhandledException"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 2145
    :cond_0
    :goto_0
    return-void

    .line 2142
    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    .line 3025
    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 2143
    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2144
    const-string v0, "logUnhandledException"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    throw v0

    .line 2147
    :cond_2
    :try_start_1
    const-string v0, "logUnhandledException"

    const-string v1, "name"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2150
    const-string v0, "logUnhandledException"

    const-string v1, "reason"

    invoke-static {p2, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2153
    const-string v0, "logUnhandledException"

    const-string v1, "stack"

    invoke-static {p3, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2157
    new-instance v0, Lcom/crittercism/internal/co;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/crittercism/internal/co;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2158
    iget-object v1, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/ax;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 133
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMetadata(Ljava/lang/String;)V
    .locals 3
    .param p1, "metadataJsonStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 360
    .line 10370
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    .line 10371
    const-string v0, "setMetadata"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 10387
    :cond_0
    :goto_0
    return-void

    .line 10374
    :cond_1
    const-string v0, "setMetadata"

    const-string v1, "metadataJson"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10377
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    .line 11025
    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 10378
    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10379
    const-string v0, "setMetadata"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    throw v0

    .line 10384
    :cond_2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 10389
    :try_start_2
    iget-object v1, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/ax;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 364
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10386
    :catch_2
    move-exception v0

    :try_start_3
    const-string v0, "setMetadata"

    .line 11630
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "badly formatted json string. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11631
    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public setTransactionValue(Ljava/lang/String;I)V
    .locals 2
    .param p1, "transactionName"    # Ljava/lang/String;
    .param p2, "transactionValue"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 304
    .line 8314
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    .line 8315
    const-string v0, "setTransactionValue"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 8321
    :cond_0
    :goto_0
    return-void

    .line 8318
    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    .line 9025
    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 8319
    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8320
    const-string v0, "setTransactionValue"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    throw v0

    .line 8323
    :cond_2
    :try_start_1
    const-string v0, "setTransactionValue"

    const-string/jumbo v1, "transactionName"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8326
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v0, p1, p2}, Lcom/crittercism/internal/ax;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 308
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 395
    .line 12404
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    .line 12405
    const-string v0, "setUsername"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 12423
    :cond_0
    :goto_0
    return-void

    .line 12408
    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    .line 13025
    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 12409
    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12410
    const-string v0, "setUsername"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    throw v0

    .line 12413
    :cond_2
    :try_start_1
    const-string v0, "setUsername"

    const-string/jumbo v1, "username"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12416
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 12418
    :try_start_2
    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 12425
    :try_start_3
    iget-object v1, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/ax;->a(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 399
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12419
    :catch_2
    move-exception v0

    .line 12421
    :try_start_4
    const-string v1, "Crittercism.setUsername()"

    invoke-static {v1, v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0
.end method
