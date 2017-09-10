.class public final Lcom/crittercism/internal/ee;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    .line 31
    :cond_0
    new-instance v0, Lcom/crittercism/internal/cj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "API Level "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not supportWebView monitoring. Skipping instrumentation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    return-void
.end method

.method public static a(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;
    .locals 4

    .prologue
    .line 51
    :try_start_0
    const-string v0, "android.webkit.CallbackProxy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    const-class v1, Landroid/webkit/WebView;

    .line 1082
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/crittercism/internal/j;->a(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getWebViewClient"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 55
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClient;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 58
    :catch_1
    move-exception v0

    .line 59
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 60
    :catch_2
    move-exception v0

    .line 61
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 62
    :catch_3
    move-exception v0

    .line 63
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 64
    :catch_4
    move-exception v0

    .line 65
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;
    .locals 4

    .prologue
    .line 73
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "getWebViewProvider"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 74
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 76
    const-string v2, "getWebViewClient"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 77
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClient;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :catch_1
    move-exception v0

    .line 81
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 82
    :catch_2
    move-exception v0

    .line 83
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 84
    :catch_3
    move-exception v0

    .line 85
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;
    .locals 3

    .prologue
    .line 93
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "getWebViewProvider"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 94
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 100
    const-string v2, "mContentsClientAdapter"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 101
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mWebViewClient"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 104
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClient;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4

    return-object v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 108
    :catch_1
    move-exception v0

    .line 109
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 110
    :catch_2
    move-exception v0

    .line 111
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 112
    :catch_3
    move-exception v0

    .line 113
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 114
    :catch_4
    move-exception v0

    .line 115
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
