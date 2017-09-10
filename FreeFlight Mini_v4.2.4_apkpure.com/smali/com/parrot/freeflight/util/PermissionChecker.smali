.class public Lcom/parrot/freeflight/util/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/util/PermissionChecker$Listener;
    }
.end annotation


# static fields
.field private static final PERMISSION_REQUEST_CODE:I = 0x6f


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/util/PermissionChecker$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPermissionRequestDialog:Landroid/app/AlertDialog;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/util/PermissionChecker;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/util/PermissionChecker;)Lcom/parrot/freeflight/util/PermissionChecker$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/util/PermissionChecker;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/util/PermissionChecker;->mListener:Lcom/parrot/freeflight/util/PermissionChecker$Listener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/util/PermissionChecker$Listener;)Lcom/parrot/freeflight/util/PermissionChecker$Listener;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/util/PermissionChecker;
    .param p1, "x1"    # Lcom/parrot/freeflight/util/PermissionChecker$Listener;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/parrot/freeflight/util/PermissionChecker;->mListener:Lcom/parrot/freeflight/util/PermissionChecker$Listener;

    return-object p1
.end method

.method private showPermissionRequestDialog(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "msg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/parrot/freeflight/util/PermissionChecker;->closePermissionRequestDialog()V

    .line 101
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 103
    const v1, 0x7f0803bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    const v1, 0x7f0805ea

    new-instance v2, Lcom/parrot/freeflight/util/PermissionChecker$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/parrot/freeflight/util/PermissionChecker$1;-><init>(Lcom/parrot/freeflight/util/PermissionChecker;Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    const v1, 0x7f080397

    new-instance v2, Lcom/parrot/freeflight/util/PermissionChecker$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/util/PermissionChecker$2;-><init>(Lcom/parrot/freeflight/util/PermissionChecker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/util/PermissionChecker;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    .line 121
    iget-object v1, p0, Lcom/parrot/freeflight/util/PermissionChecker;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 122
    return-void
.end method


# virtual methods
.method public checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/PermissionChecker$Listener;)V
    .locals 13
    .param p1, "permissionsArray"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "permissionsMessages"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "endMessage"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4, "listener"    # Lcom/parrot/freeflight/util/PermissionChecker$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-lt v10, v11, :cond_7

    .line 43
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/parrot/freeflight/util/PermissionChecker;->mListener:Lcom/parrot/freeflight/util/PermissionChecker$Listener;

    .line 45
    iget-object v10, p0, Lcom/parrot/freeflight/util/PermissionChecker;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 46
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_4

    .line 47
    new-instance v7, Ljava/util/HashMap;

    array-length v10, p1

    invoke-direct {v7, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 48
    .local v7, "permissionsDenied":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "it":I
    array-length v4, p1

    .local v4, "length":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 49
    aget-object v5, p1, v3

    .line 50
    .local v5, "permission":Ljava/lang/String;
    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 51
    aget v10, p2, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v5    # "permission":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 55
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 56
    .local v8, "res":Landroid/content/res/Resources;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 58
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 59
    .restart local v5    # "permission":Ljava/lang/String;
    invoke-static {v1, v5}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 60
    const-string v10, "\n  - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 63
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "permission":Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 64
    .local v6, "permissions":[Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-nez v10, :cond_5

    .line 65
    const/16 v10, 0x6f

    invoke-static {v1, v6, v10}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 78
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v3    # "it":I
    .end local v4    # "length":I
    .end local v6    # "permissions":[Ljava/lang/String;
    .end local v7    # "permissionsDenied":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :goto_2
    return-void

    .line 67
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v3    # "it":I
    .restart local v4    # "length":I
    .restart local v6    # "permissions":[Ljava/lang/String;
    .restart local v7    # "permissionsDenied":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v8    # "res":Landroid/content/res/Resources;
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    const/4 v10, 0x0

    const v11, 0x7f0803bb

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v1, v10, v6}, Lcom/parrot/freeflight/util/PermissionChecker;->showPermissionRequestDialog(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 71
    .end local v6    # "permissions":[Ljava/lang/String;
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    if-eqz p4, :cond_4

    .line 72
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v11}, Lcom/parrot/freeflight/util/PermissionChecker$Listener;->onPermissionsChanged(ZLjava/util/Map;)V

    goto :goto_2

    .line 75
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v3    # "it":I
    .end local v4    # "length":I
    .end local v7    # "permissionsDenied":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_7
    if-eqz p4, :cond_4

    .line 76
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v11}, Lcom/parrot/freeflight/util/PermissionChecker$Listener;->onPermissionsChanged(ZLjava/util/Map;)V

    goto :goto_2
.end method

.method public closePermissionRequestDialog()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/util/PermissionChecker;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/util/PermissionChecker;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 126
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/util/PermissionChecker;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    .line 127
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    const/16 v6, 0x6f

    if-ne p1, v6, :cond_3

    array-length v6, p3

    if-lez v6, :cond_3

    .line 82
    new-instance v5, Ljava/util/HashMap;

    array-length v6, p2

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 83
    .local v5, "permissionsStatusDetails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    .line 84
    .local v0, "allPermissionsGranted":Z
    const/4 v1, 0x0

    .local v1, "it":I
    array-length v2, p2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 85
    aget-object v3, p2, v1

    .line 86
    .local v3, "permission":Ljava/lang/String;
    aget v6, p3, v1

    if-nez v6, :cond_1

    const/4 v4, 0x1

    .line 87
    .local v4, "permissionGranted":Z
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    if-nez v4, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 84
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v4    # "permissionGranted":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 92
    .end local v3    # "permission":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/parrot/freeflight/util/PermissionChecker;->mListener:Lcom/parrot/freeflight/util/PermissionChecker$Listener;

    if-eqz v6, :cond_3

    .line 93
    iget-object v6, p0, Lcom/parrot/freeflight/util/PermissionChecker;->mListener:Lcom/parrot/freeflight/util/PermissionChecker$Listener;

    invoke-interface {v6, v0, v5}, Lcom/parrot/freeflight/util/PermissionChecker$Listener;->onPermissionsChanged(ZLjava/util/Map;)V

    .line 94
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/parrot/freeflight/util/PermissionChecker;->mListener:Lcom/parrot/freeflight/util/PermissionChecker$Listener;

    .line 97
    .end local v0    # "allPermissionsGranted":Z
    .end local v1    # "it":I
    .end local v2    # "length":I
    .end local v5    # "permissionsStatusDetails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_3
    return-void
.end method
