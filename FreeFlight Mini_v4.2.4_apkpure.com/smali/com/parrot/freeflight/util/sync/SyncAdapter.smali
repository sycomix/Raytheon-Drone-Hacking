.class public Lcom/parrot/freeflight/util/sync/SyncAdapter;
.super Lcom/parrot/freeflight/utils/GenericSyncAdapter;
.source "SyncAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncAdapter"

.field private static final UPDATE_RETRY_DELAY:I = 0x5460


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/utils/GenericSyncAdapter;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public static startSync(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 52
    const v4, 0x7f0806ad

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "providerAuthority":Ljava/lang/String;
    invoke-static {}, Lcom/parrot/freeflight/util/sync/StubSyncAuthenticator;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 54
    .local v0, "account":Landroid/accounts/Account;
    const-string v4, "account"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 55
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v1, v0, v6, v6}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 56
    invoke-static {v0, v2, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 58
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v3, "settingsBundle":Landroid/os/Bundle;
    const-string v4, "force"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    const-string v4, "expedited"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    invoke-static {v0, v2, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 62
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "contentProviderClient"    # Landroid/content/ContentProviderClient;
    .param p5, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    const/4 v5, 0x1

    .line 30
    const-string v6, "SyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPerformSync : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0}, Lcom/parrot/freeflight/util/sync/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 32
    .local v0, "context":Landroid/content/Context;
    const/4 v3, 0x1

    .line 33
    .local v3, "syncOk":Z
    iget-object v6, p0, Lcom/parrot/freeflight/util/sync/SyncAdapter;->mSyncables:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/util/sync/ISyncable;

    .line 34
    .local v4, "syncable":Lcom/parrot/freeflight/util/sync/ISyncable;
    invoke-interface {v4, v0}, Lcom/parrot/freeflight/util/sync/ISyncable;->onPerformSync(Landroid/content/Context;)Z

    move-result v7

    and-int/2addr v3, v7

    .line 35
    goto :goto_0

    .line 39
    .end local v4    # "syncable":Lcom/parrot/freeflight/util/sync/ISyncable;
    :cond_0
    if-eqz v3, :cond_1

    .line 40
    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {p1, p3, v6}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 46
    :goto_1
    if-eqz v3, :cond_2

    const/4 v1, 0x2

    .line 47
    .local v1, "flag":I
    :goto_2
    new-instance v2, Landroid/content/ComponentName;

    const-class v6, Lcom/parrot/freeflight/util/sync/NetworkChangeBroadcastReceiver;

    invoke-direct {v2, v0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v2, "receiverComponentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v2, v1, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 49
    return-void

    .line 42
    .end local v1    # "flag":I
    .end local v2    # "receiverComponentName":Landroid/content/ComponentName;
    :cond_1
    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-wide/16 v8, 0x5460

    invoke-static {p1, p3, v6, v8, v9}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_1

    :cond_2
    move v1, v5

    .line 46
    goto :goto_2
.end method
