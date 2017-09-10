.class public Lcom/parrot/freeflight/util/FragmentPermissionChecker;
.super Ljava/lang/Object;
.source "FragmentPermissionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;
    }
.end annotation


# static fields
.field private static final PERMISSION_REQUEST_CODE:I = 0x6f


# instance fields
.field private mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPermissionRequestDialog:Landroid/app/AlertDialog;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->mFragmentRef:Ljava/lang/ref/WeakReference;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/util/FragmentPermissionChecker;)Lcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/util/FragmentPermissionChecker;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->mListener:Lcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/util/FragmentPermissionChecker;Lcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;)Lcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/util/FragmentPermissionChecker;
    .param p1, "x1"    # Lcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->mListener:Lcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;

    return-object p1
.end method

.method private showPermissionRequestDialog(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "msg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->closePermissionRequestDialog()V

    .line 108
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 110
    const v1, 0x7f0803bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 112
    const v1, 0x7f0805ea

    new-instance v2, Lcom/parrot/freeflight/util/FragmentPermissionChecker$1;

    invoke-direct {v2, p0, p2, p4}, Lcom/parrot/freeflight/util/FragmentPermissionChecker$1;-><init>(Lcom/parrot/freeflight/util/FragmentPermissionChecker;Landroid/support/v4/app/Fragment;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    const v1, 0x7f080397

    new-instance v2, Lcom/parrot/freeflight/util/FragmentPermissionChecker$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/util/FragmentPermissionChecker$2;-><init>(Lcom/parrot/freeflight/util/FragmentPermissionChecker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    .line 128
    iget-object v1, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 129
    return-void
.end method


# virtual methods
.method public checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;)V
    .locals 14
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
    .param p4, "listener"    # Lcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-lt v11, v12, :cond_8

    .line 44
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->mListener:Lcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;

    .line 46
    iget-object v11, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 48
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_1

    .line 49
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 53
    .local v1, "activity":Landroid/app/Activity;
    :goto_0
    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 54
    new-instance v8, Ljava/util/HashMap;

    array-length v11, p1

    invoke-direct {v8, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 55
    .local v8, "permissionsDenied":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "it":I
    array-length v5, p1

    .local v5, "length":I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 56
    aget-object v6, p1, v4

    .line 57
    .local v6, "permission":Ljava/lang/String;
    invoke-static {v1, v6}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_0

    .line 58
    aget v11, p2, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 51
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v4    # "it":I
    .end local v5    # "length":I
    .end local v6    # "permission":Ljava/lang/String;
    .end local v8    # "permissionsDenied":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "activity":Landroid/app/Activity;
    goto :goto_0

    .line 61
    .restart local v4    # "it":I
    .restart local v5    # "length":I
    .restart local v8    # "permissionsDenied":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 62
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 63
    .local v9, "res":Landroid/content/res/Resources;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v10, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 65
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 66
    .restart local v6    # "permission":Ljava/lang/String;
    invoke-static {v1, v6}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 67
    const-string v11, "\n  - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 70
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "permission":Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 71
    .local v7, "permissions":[Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-nez v11, :cond_6

    .line 72
    const/16 v11, 0x6f

    invoke-virtual {v3, v7, v11}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 85
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v3    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v4    # "it":I
    .end local v5    # "length":I
    .end local v7    # "permissions":[Ljava/lang/String;
    .end local v8    # "permissionsDenied":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    :goto_3
    return-void

    .line 74
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v3    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v4    # "it":I
    .restart local v5    # "length":I
    .restart local v7    # "permissions":[Ljava/lang/String;
    .restart local v8    # "permissionsDenied":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v9    # "res":Landroid/content/res/Resources;
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const/4 v11, 0x0

    const v12, 0x7f0803bb

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v1, v3, v11, v7}, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->showPermissionRequestDialog(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 78
    .end local v7    # "permissions":[Ljava/lang/String;
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    if-eqz p4, :cond_5

    .line 79
    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v11, v12}, Lcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;->onPermissionsChanged(ZLjava/util/Map;)V

    goto :goto_3

    .line 82
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v3    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v4    # "it":I
    .end local v5    # "length":I
    .end local v8    # "permissionsDenied":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_8
    if-eqz p4, :cond_5

    .line 83
    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v11, v12}, Lcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;->onPermissionsChanged(ZLjava/util/Map;)V

    goto :goto_3
.end method

.method public closePermissionRequestDialog()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 133
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    .line 134
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
    .line 88
    const/16 v6, 0x6f

    if-ne p1, v6, :cond_3

    array-length v6, p3

    if-lez v6, :cond_3

    .line 89
    new-instance v5, Ljava/util/HashMap;

    array-length v6, p2

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 90
    .local v5, "permissionsStatusDetails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    .line 91
    .local v0, "allPermissionsGranted":Z
    const/4 v1, 0x0

    .local v1, "it":I
    array-length v2, p2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 92
    aget-object v3, p2, v1

    .line 93
    .local v3, "permission":Ljava/lang/String;
    aget v6, p3, v1

    if-nez v6, :cond_1

    const/4 v4, 0x1

    .line 94
    .local v4, "permissionGranted":Z
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    if-nez v4, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 91
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v4    # "permissionGranted":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 99
    .end local v3    # "permission":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->mListener:Lcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;

    if-eqz v6, :cond_3

    .line 100
    iget-object v6, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->mListener:Lcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;

    invoke-interface {v6, v0, v5}, Lcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;->onPermissionsChanged(ZLjava/util/Map;)V

    .line 101
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->mListener:Lcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;

    .line 104
    .end local v0    # "allPermissionsGranted":Z
    .end local v1    # "it":I
    .end local v2    # "length":I
    .end local v5    # "permissionsStatusDetails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_3
    return-void
.end method
