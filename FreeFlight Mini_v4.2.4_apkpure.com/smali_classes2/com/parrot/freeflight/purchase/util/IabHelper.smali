.class public Lcom/parrot/freeflight/purchase/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeFinishedListener;,
        Lcom/parrot/freeflight/purchase/util/IabHelper$QueryInventoryFinishedListener;,
        Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"

.field public static final STATE_CANCELED:I = 0x1

.field public static final STATE_PURCHASED:I = 0x0

.field public static final STATE_REFUNDED:I = 0x2


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v1, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mDebugLog:Z

    .line 78
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 81
    iput-boolean v1, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mSetupDone:Z

    .line 84
    iput-boolean v1, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mDisposed:Z

    .line 87
    iput-boolean v1, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mSubscriptionsSupported:Z

    .line 91
    iput-boolean v1, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mAsyncInProgress:Z

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mContext:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 173
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 762
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v4, "/"

    .line 765
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v4, "/"

    .line 775
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 777
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 778
    rsub-int v2, p0, -0x3e8

    .line 779
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    .line 785
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 780
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 782
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 783
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 785
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 793
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_0
    return-void
.end method

.method consume(Lcom/parrot/freeflight/purchase/util/Purchase;)V
    .locals 8
    .param p1, "itemInfo"    # Lcom/parrot/freeflight/purchase/util/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/freeflight/purchase/util/IabException;
        }
    .end annotation

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkNotDisposed()V

    .line 669
    const-string v4, "consume"

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 671
    iget-object v4, p1, Lcom/parrot/freeflight/purchase/util/Purchase;->mItemType:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 672
    new-instance v4, Lcom/parrot/freeflight/purchase/util/IabException;

    const/16 v5, -0x3f2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Items of type \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/parrot/freeflight/purchase/util/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/parrot/freeflight/purchase/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 677
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/purchase/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 678
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/parrot/freeflight/purchase/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 679
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 680
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t consume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 681
    new-instance v4, Lcom/parrot/freeflight/purchase/util/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/parrot/freeflight/purchase/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/parrot/freeflight/purchase/util/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/parrot/freeflight/purchase/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 685
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Consuming sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 686
    iget-object v4, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 687
    .local v1, "response":I
    if-nez v1, :cond_3

    .line 688
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully consumed sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 698
    return-void

    .line 691
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error consuming consuming sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/parrot/freeflight/purchase/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 692
    new-instance v4, Lcom/parrot/freeflight/purchase/util/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error consuming sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/parrot/freeflight/purchase/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/parrot/freeflight/purchase/util/Purchase;Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .param p1, "purchase"    # Lcom/parrot/freeflight/purchase/util/Purchase;
    .param p2, "listener"    # Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeFinishedListener;

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkNotDisposed()V

    .line 737
    const-string v1, "consume"

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 739
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/purchase/util/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeFinishedListener;Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 741
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/purchase/util/Purchase;",
            ">;",
            "Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 749
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/purchase/util/Purchase;>;"
    invoke-direct {p0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkNotDisposed()V

    .line 750
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 751
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/parrot/freeflight/purchase/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeFinishedListener;Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 752
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeFinishedListener;Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 7
    .param p2, "singleListener"    # Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/purchase/util/Purchase;",
            ">;",
            "Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeFinishedListener;",
            "Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 971
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/purchase/util/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 972
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 973
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/parrot/freeflight/purchase/util/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/purchase/util/IabHelper$3;-><init>(Lcom/parrot/freeflight/purchase/util/IabHelper;Ljava/util/List;Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/parrot/freeflight/purchase/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1002
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1003
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 299
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mSetupDone:Z

    .line 301
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 302
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 305
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mDisposed:Z

    .line 306
    iput-object v2, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mContext:Landroid/content/Context;

    .line 307
    iput-object v2, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 308
    iput-object v2, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 309
    iput-object v2, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 310
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkNotDisposed()V

    .line 187
    iput-boolean p1, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mDebugLog:Z

    .line 188
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkNotDisposed()V

    .line 181
    iput-boolean p1, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mDebugLog:Z

    .line 182
    iput-object p2, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 183
    return-void
.end method

.method flagEndAsync()V
    .locals 2

    .prologue
    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 839
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mAsyncInProgress:Z

    .line 841
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 830
    iget-boolean v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_0
    iput-object p1, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mAsyncInProgress:Z

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 835
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 799
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 800
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 801
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 802
    const/4 v1, 0x0

    .line 805
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 804
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 805
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 807
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 809
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 815
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 816
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 817
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 818
    const/4 v1, 0x0

    .line 821
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 820
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 821
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 823
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 824
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 825
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 450
    iget v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_0

    const/4 v8, 0x0

    .line 529
    :goto_0
    return v8

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkNotDisposed()V

    .line 453
    const-string v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->flagEndAsync()V

    .line 458
    if-nez p3, :cond_2

    .line 459
    const-string v8, "Null data in IAB activity result."

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 460
    new-instance v6, Lcom/parrot/freeflight/purchase/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Null data in IAB result"

    invoke-direct {v6, v8, v9}, Lcom/parrot/freeflight/purchase/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 461
    .local v6, "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/parrot/freeflight/purchase/util/IabResult;Lcom/parrot/freeflight/purchase/util/Purchase;)V

    .line 462
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 465
    .end local v6    # "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/parrot/freeflight/purchase/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 466
    .local v5, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 467
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_a

    if-nez v5, :cond_a

    .line 470
    const-string v8, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 471
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 472
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 473
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 474
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected item type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 476
    if-eqz v4, :cond_3

    if-nez v0, :cond_5

    .line 477
    :cond_3
    const-string v8, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 478
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 479
    new-instance v6, Lcom/parrot/freeflight/purchase/util/IabResult;

    const/16 v8, -0x3f0

    const-string v9, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v6, v8, v9}, Lcom/parrot/freeflight/purchase/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 480
    .restart local v6    # "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/parrot/freeflight/purchase/util/IabResult;Lcom/parrot/freeflight/purchase/util/Purchase;)V

    .line 481
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 484
    .end local v6    # "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    :cond_5
    const/4 v2, 0x0

    .line 486
    .local v2, "purchase":Lcom/parrot/freeflight/purchase/util/Purchase;
    :try_start_0
    new-instance v3, Lcom/parrot/freeflight/purchase/util/Purchase;

    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v3, v8, v4, v0}, Lcom/parrot/freeflight/purchase/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .end local v2    # "purchase":Lcom/parrot/freeflight/purchase/util/Purchase;
    .local v3, "purchase":Lcom/parrot/freeflight/purchase/util/Purchase;
    :try_start_1
    invoke-virtual {v3}, Lcom/parrot/freeflight/purchase/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 490
    .local v7, "sku":Ljava/lang/String;
    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v8, v4, v0}, Lcom/parrot/freeflight/purchase/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 491
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase signature verification FAILED for sku "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 492
    new-instance v6, Lcom/parrot/freeflight/purchase/util/IabResult;

    const/16 v8, -0x3eb

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signature verification failed for sku "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/parrot/freeflight/purchase/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 493
    .restart local v6    # "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v8, v6, v3}, Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/parrot/freeflight/purchase/util/IabResult;Lcom/parrot/freeflight/purchase/util/Purchase;)V

    .line 494
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 496
    .end local v6    # "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    :cond_7
    const-string v8, "Purchase signature successfully verified."

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 506
    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 507
    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lcom/parrot/freeflight/purchase/util/IabResult;

    const/4 v10, 0x0

    const-string v11, "Success"

    invoke-direct {v9, v10, v11}, Lcom/parrot/freeflight/purchase/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v3}, Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/parrot/freeflight/purchase/util/IabResult;Lcom/parrot/freeflight/purchase/util/Purchase;)V

    .line 529
    .end local v3    # "purchase":Lcom/parrot/freeflight/purchase/util/Purchase;
    .end local v7    # "sku":Ljava/lang/String;
    :cond_8
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 498
    .restart local v2    # "purchase":Lcom/parrot/freeflight/purchase/util/Purchase;
    :catch_0
    move-exception v1

    .line 499
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    const-string v8, "Failed to parse purchase data."

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 501
    new-instance v6, Lcom/parrot/freeflight/purchase/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Failed to parse purchase data."

    invoke-direct {v6, v8, v9}, Lcom/parrot/freeflight/purchase/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 502
    .restart local v6    # "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/parrot/freeflight/purchase/util/IabResult;Lcom/parrot/freeflight/purchase/util/Purchase;)V

    .line 503
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 510
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Lcom/parrot/freeflight/purchase/util/Purchase;
    .end local v6    # "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    :cond_a
    const/4 v8, -0x1

    if-ne p2, v8, :cond_b

    .line 512
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/parrot/freeflight/purchase/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 513
    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 514
    new-instance v6, Lcom/parrot/freeflight/purchase/util/IabResult;

    const-string v8, "Problem purchashing item."

    invoke-direct {v6, v5, v8}, Lcom/parrot/freeflight/purchase/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 515
    .restart local v6    # "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/parrot/freeflight/purchase/util/IabResult;Lcom/parrot/freeflight/purchase/util/Purchase;)V

    goto :goto_1

    .line 518
    .end local v6    # "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    :cond_b
    if-nez p2, :cond_c

    .line 519
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase canceled - Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/parrot/freeflight/purchase/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 520
    new-instance v6, Lcom/parrot/freeflight/purchase/util/IabResult;

    const/16 v8, -0x3ed

    const-string v9, "User canceled."

    invoke-direct {v6, v8, v9}, Lcom/parrot/freeflight/purchase/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 521
    .restart local v6    # "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/parrot/freeflight/purchase/util/IabResult;Lcom/parrot/freeflight/purchase/util/Purchase;)V

    goto :goto_1

    .line 524
    .end local v6    # "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase failed. Result code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 525
    invoke-static {v5}, Lcom/parrot/freeflight/purchase/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 524
    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 526
    new-instance v6, Lcom/parrot/freeflight/purchase/util/IabResult;

    const/16 v8, -0x3ee

    const-string v9, "Unknown purchase response."

    invoke-direct {v6, v8, v9}, Lcom/parrot/freeflight/purchase/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 527
    .restart local v6    # "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/parrot/freeflight/purchase/util/IabResult;Lcom/parrot/freeflight/purchase/util/Purchase;)V

    goto/16 :goto_1

    .line 498
    .end local v6    # "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    .restart local v3    # "purchase":Lcom/parrot/freeflight/purchase/util/Purchase;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "purchase":Lcom/parrot/freeflight/purchase/util/Purchase;
    .restart local v2    # "purchase":Lcom/parrot/freeflight/purchase/util/Purchase;
    goto/16 :goto_2
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 344
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/purchase/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 349
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/freeflight/purchase/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "listener"    # Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p6, "extraData"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkNotDisposed()V

    .line 383
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 384
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 387
    const-string v1, "subs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mSubscriptionsSupported:Z

    if-nez v1, :cond_1

    .line 388
    new-instance v11, Lcom/parrot/freeflight/purchase/util/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v11, v1, v2}, Lcom/parrot/freeflight/purchase/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 390
    .local v11, "r":Lcom/parrot/freeflight/purchase/util/IabResult;
    invoke-virtual {p0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->flagEndAsync()V

    .line 391
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/parrot/freeflight/purchase/util/IabResult;Lcom/parrot/freeflight/purchase/util/Purchase;)V

    .line 433
    .end local v11    # "r":Lcom/parrot/freeflight/purchase/util/IabResult;
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 398
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 399
    .local v12, "response":I
    if-eqz v12, :cond_2

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v12}, Lcom/parrot/freeflight/purchase/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->flagEndAsync()V

    .line 402
    new-instance v13, Lcom/parrot/freeflight/purchase/util/IabResult;

    const-string v1, "Unable to buy item"

    invoke-direct {v13, v12, v1}, Lcom/parrot/freeflight/purchase/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 403
    .local v13, "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/parrot/freeflight/purchase/util/IabResult;Lcom/parrot/freeflight/purchase/util/Purchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 417
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v12    # "response":I
    .end local v13    # "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    :catch_0
    move-exception v9

    .line 418
    .local v9, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 420
    invoke-virtual {p0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->flagEndAsync()V

    .line 422
    new-instance v13, Lcom/parrot/freeflight/purchase/util/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v13, v1, v2}, Lcom/parrot/freeflight/purchase/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 423
    .restart local v13    # "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/parrot/freeflight/purchase/util/IabResult;Lcom/parrot/freeflight/purchase/util/Purchase;)V

    goto/16 :goto_0

    .line 407
    .end local v9    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v13    # "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    .restart local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v12    # "response":I
    :cond_2
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 408
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 409
    move/from16 v0, p4

    iput v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mRequestCode:I

    .line 410
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchaseListener:Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 411
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 412
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 414
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x0

    .line 415
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p4

    .line 412
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 425
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "response":I
    :catch_1
    move-exception v9

    .line 426
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 428
    invoke-virtual {p0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->flagEndAsync()V

    .line 430
    new-instance v13, Lcom/parrot/freeflight/purchase/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v13, v1, v2}, Lcom/parrot/freeflight/purchase/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 431
    .restart local v13    # "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/parrot/freeflight/purchase/util/IabResult;Lcom/parrot/freeflight/purchase/util/Purchase;)V

    goto/16 :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 354
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/purchase/util/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 359
    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/freeflight/purchase/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/parrot/freeflight/purchase/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1006
    iget-boolean v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/parrot/freeflight/purchase/util/Inventory;
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parrot/freeflight/purchase/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/freeflight/purchase/util/IabException;
        }
    .end annotation

    .prologue
    .line 533
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/parrot/freeflight/purchase/util/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/parrot/freeflight/purchase/util/Inventory;
    .locals 6
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parrot/freeflight/purchase/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/freeflight/purchase/util/IabException;
        }
    .end annotation

    .prologue
    .line 551
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkNotDisposed()V

    .line 552
    const-string v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 554
    :try_start_0
    new-instance v1, Lcom/parrot/freeflight/purchase/util/Inventory;

    invoke-direct {v1}, Lcom/parrot/freeflight/purchase/util/Inventory;-><init>()V

    .line 555
    .local v1, "inv":Lcom/parrot/freeflight/purchase/util/Inventory;
    const-string v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lcom/parrot/freeflight/purchase/util/IabHelper;->queryPurchases(Lcom/parrot/freeflight/purchase/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 556
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 557
    new-instance v3, Lcom/parrot/freeflight/purchase/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/parrot/freeflight/purchase/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 584
    .end local v1    # "inv":Lcom/parrot/freeflight/purchase/util/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/parrot/freeflight/purchase/util/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/parrot/freeflight/purchase/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 560
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/parrot/freeflight/purchase/util/Inventory;
    .restart local v2    # "r":I
    :cond_0
    if-eqz p1, :cond_1

    .line 561
    :try_start_1
    const-string v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lcom/parrot/freeflight/purchase/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/parrot/freeflight/purchase/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 562
    if-eqz v2, :cond_1

    .line 563
    new-instance v3, Lcom/parrot/freeflight/purchase/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/parrot/freeflight/purchase/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 587
    .end local v1    # "inv":Lcom/parrot/freeflight/purchase/util/Inventory;
    .end local v2    # "r":I
    :catch_1
    move-exception v0

    .line 588
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/parrot/freeflight/purchase/util/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/parrot/freeflight/purchase/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 568
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/parrot/freeflight/purchase/util/Inventory;
    .restart local v2    # "r":I
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_3

    .line 569
    const-string v3, "subs"

    invoke-virtual {p0, v1, v3}, Lcom/parrot/freeflight/purchase/util/IabHelper;->queryPurchases(Lcom/parrot/freeflight/purchase/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 570
    if-eqz v2, :cond_2

    .line 571
    new-instance v3, Lcom/parrot/freeflight/purchase/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/parrot/freeflight/purchase/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 574
    :cond_2
    if-eqz p1, :cond_3

    .line 575
    const-string v3, "subs"

    invoke-virtual {p0, v3, v1, p2}, Lcom/parrot/freeflight/purchase/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/parrot/freeflight/purchase/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 576
    if-eqz v2, :cond_3

    .line 577
    new-instance v3, Lcom/parrot/freeflight/purchase/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/parrot/freeflight/purchase/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 582
    :cond_3
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/parrot/freeflight/purchase/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/purchase/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 650
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/parrot/freeflight/purchase/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/parrot/freeflight/purchase/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 651
    return-void
.end method

.method public queryInventoryAsync(ZLcom/parrot/freeflight/purchase/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lcom/parrot/freeflight/purchase/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 654
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/parrot/freeflight/purchase/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/parrot/freeflight/purchase/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 655
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/parrot/freeflight/purchase/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/parrot/freeflight/purchase/util/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/parrot/freeflight/purchase/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 619
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 620
    .local v5, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkNotDisposed()V

    .line 621
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 622
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 623
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/parrot/freeflight/purchase/util/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/purchase/util/IabHelper$2;-><init>(Lcom/parrot/freeflight/purchase/util/IabHelper;ZLjava/util/List;Lcom/parrot/freeflight/purchase/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 646
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 647
    return-void
.end method

.method queryPurchases(Lcom/parrot/freeflight/purchase/util/Inventory;Ljava/lang/String;)I
    .locals 16
    .param p1, "inv"    # Lcom/parrot/freeflight/purchase/util/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 846
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Querying owned items, item type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v13, :cond_0

    .line 849
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 851
    :cond_0
    const/4 v12, 0x0

    .line 852
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 853
    .local v1, "continueToken":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mDisposed:Z

    if-nez v13, :cond_9

    .line 857
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Calling getPurchases with continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 858
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 861
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/purchase/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 862
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Owned items response: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 863
    if-eqz v8, :cond_2

    .line 865
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPurchases() failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    move v13, v8

    .line 918
    .end local v3    # "ownedItems":Landroid/os/Bundle;
    .end local v8    # "response":I
    :goto_0
    return v13

    .line 868
    .restart local v3    # "ownedItems":Landroid/os/Bundle;
    .restart local v8    # "response":I
    :cond_2
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    .line 869
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    .line 870
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 872
    :cond_3
    const-string v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 873
    const/16 v13, -0x3ea

    goto :goto_0

    .line 876
    :cond_4
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 878
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 880
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 883
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_8

    .line 885
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 886
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 887
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 888
    .local v11, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v13, v6, v9}, Lcom/parrot/freeflight/purchase/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 890
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sku is owned: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 891
    new-instance v5, Lcom/parrot/freeflight/purchase/util/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6, v9}, Lcom/parrot/freeflight/purchase/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    .local v5, "purchase":Lcom/parrot/freeflight/purchase/util/Purchase;
    invoke-virtual {v5}, Lcom/parrot/freeflight/purchase/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 895
    const-string v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 896
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 900
    :cond_5
    invoke-virtual {v5}, Lcom/parrot/freeflight/purchase/util/Purchase;->getPurchaseState()I

    move-result v13

    if-nez v13, :cond_6

    .line 902
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/parrot/freeflight/purchase/util/Inventory;->addPurchase(Lcom/parrot/freeflight/purchase/util/Purchase;)V

    .line 883
    .end local v5    # "purchase":Lcom/parrot/freeflight/purchase/util/Purchase;
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 906
    :cond_7
    const-string v13, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 907
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 908
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   Signature: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 909
    const/4 v12, 0x1

    goto :goto_2

    .line 913
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_8
    const-string v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 914
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 916
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mDisposed:Z

    if-eqz v13, :cond_1

    .line 918
    .end local v2    # "i":I
    .end local v3    # "ownedItems":Landroid/os/Bundle;
    .end local v4    # "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "response":I
    .end local v10    # "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    if-eqz v12, :cond_a

    const/16 v13, -0x3eb

    goto/16 :goto_0

    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/parrot/freeflight/purchase/util/Inventory;Ljava/util/List;)I
    .locals 11
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/parrot/freeflight/purchase/util/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/purchase/util/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 923
    const-string v8, "Querying SKU details."

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 924
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 925
    .local v6, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Lcom/parrot/freeflight/purchase/util/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 926
    if-eqz p3, :cond_1

    .line 927
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 928
    .local v4, "sku":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 929
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 934
    .end local v4    # "sku":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 935
    const-string v8, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 964
    :cond_2
    :goto_1
    return v2

    .line 939
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 940
    .local v1, "querySkus":Landroid/os/Bundle;
    const-string v8, "ITEM_ID_LIST"

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 941
    iget-object v8, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10, p1, v1}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 944
    .local v5, "skuDetails":Landroid/os/Bundle;
    const-string v8, "DETAILS_LIST"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 945
    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/purchase/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v2

    .line 946
    .local v2, "response":I
    if-eqz v2, :cond_4

    .line 947
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSkuDetails() failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lcom/parrot/freeflight/purchase/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 951
    :cond_4
    const-string v8, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 952
    const/16 v2, -0x3ea

    goto :goto_1

    .line 956
    .end local v2    # "response":I
    :cond_5
    const-string v8, "DETAILS_LIST"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 959
    .local v3, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 960
    .local v7, "thisResponse":Ljava/lang/String;
    new-instance v0, Lcom/parrot/freeflight/purchase/util/SkuDetails;

    invoke-direct {v0, p1, v7}, Lcom/parrot/freeflight/purchase/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    .local v0, "d":Lcom/parrot/freeflight/purchase/util/SkuDetails;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got sku details: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p2, v0}, Lcom/parrot/freeflight/purchase/util/Inventory;->addSkuDetails(Lcom/parrot/freeflight/purchase/util/SkuDetails;)V

    goto :goto_2
.end method

.method public startSetup(Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabSetupFinishedListener;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 212
    invoke-direct {p0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkNotDisposed()V

    .line 213
    iget-boolean v3, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mSetupDone:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "IAB helper is already set up."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 216
    :cond_0
    const-string v3, "Starting in-app billing setup."

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/purchase/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 217
    new-instance v3, Lcom/parrot/freeflight/purchase/util/IabHelper$1;

    invoke-direct {v3, p0, p1}, Lcom/parrot/freeflight/purchase/util/IabHelper$1;-><init>(Lcom/parrot/freeflight/purchase/util/IabHelper;Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v3, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 272
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v3, "com.android.vending"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    iget-object v3, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 275
    .local v0, "googlePlayResult":I
    iget-object v3, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 276
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eq v0, v5, :cond_2

    const/16 v3, 0x9

    if-eq v0, v3, :cond_2

    if-eq v0, v6, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 279
    iget-object v3, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 290
    :cond_1
    :goto_0
    return-void

    .line 284
    :cond_2
    if-eqz p1, :cond_1

    .line 285
    new-instance v3, Lcom/parrot/freeflight/purchase/util/IabResult;

    const-string v4, "Billing service unavailable on device."

    invoke-direct {v3, v6, v4}, Lcom/parrot/freeflight/purchase/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v3}, Lcom/parrot/freeflight/purchase/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/parrot/freeflight/purchase/util/IabResult;)V

    goto :goto_0
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/parrot/freeflight/purchase/util/IabHelper;->checkNotDisposed()V

    .line 319
    iget-boolean v0, p0, Lcom/parrot/freeflight/purchase/util/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
