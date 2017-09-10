.class public Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.java"


# static fields
.field private static DATE_FORMAT:Ljava/text/DateFormat;


# instance fields
.field private adminEmailAddress:Ljava/lang/String;

.field private completedDate:Ljava/util/Date;

.field private expiredDate:Ljava/util/Date;

.field private fileUrls:[Ljava/lang/String;

.field private numberOfFiles:I

.field private requestDate:Ljava/util/Date;

.field private requestId:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private userEmailAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 49
    sget-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->DATE_FORMAT:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50
    sget-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->DATE_FORMAT:Ljava/text/DateFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;)V
    .locals 4
    .param p1, "entry"    # Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v1, "completedDate"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->checkDateAndParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->completedDate:Ljava/util/Date;

    .line 64
    const-string v1, "requestDate"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->checkDateAndParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->requestDate:Ljava/util/Date;

    .line 65
    const-string v1, "expiredDate"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->checkDateAndParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->expiredDate:Ljava/util/Date;

    .line 66
    const-string v1, "requestId"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->requestId:Ljava/lang/String;

    .line 67
    const-string v1, "userEmailAddress"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->userEmailAddress:Ljava/lang/String;

    .line 68
    const-string v1, "adminEmailAddress"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->adminEmailAddress:Ljava/lang/String;

    .line 69
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->status:Ljava/lang/String;

    .line 71
    const-string v1, "numberOfFiles"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "numberOfFiles"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->numberOfFiles:I

    .line 75
    iget v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->numberOfFiles:I

    if-lez v1, :cond_1

    .line 76
    iget v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->numberOfFiles:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->fileUrls:[Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    .local v0, "fileIndex":I
    :goto_1
    iget v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->numberOfFiles:I

    if-ge v0, v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->fileUrls:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileUrl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    .end local v0    # "fileIndex":I
    :cond_0
    iget v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->numberOfFiles:I

    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method private checkDateAndParse(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 84
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAdminEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->adminEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCompletedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->completedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getExpiredDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->expiredDate:Ljava/util/Date;

    return-object v0
.end method

.method public getFileUrls()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->fileUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfFiles()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->numberOfFiles:I

    return v0
.end method

.method public getRequestDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->requestDate:Ljava/util/Date;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUserEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->userEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public setAdminEmailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "adminEmailAddress"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->adminEmailAddress:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setCompletedDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "completedDate"    # Ljava/util/Date;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->completedDate:Ljava/util/Date;

    .line 133
    return-void
.end method

.method public setExpiredDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "expiredDate"    # Ljava/util/Date;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->expiredDate:Ljava/util/Date;

    .line 157
    return-void
.end method

.method public setFileUrls([Ljava/lang/String;)V
    .locals 0
    .param p1, "fileUrls"    # [Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->fileUrls:[Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setNumberOfFiles(I)V
    .locals 0
    .param p1, "numberOfFiles"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->numberOfFiles:I

    .line 141
    return-void
.end method

.method public setRequestDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "requestDate"    # Ljava/util/Date;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->requestDate:Ljava/util/Date;

    .line 125
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->requestId:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->status:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setUserEmailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "userEmailAddress"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->userEmailAddress:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public toGenericEntry()Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 4

    .prologue
    .line 163
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;-><init>()V

    .line 164
    .local v0, "entry":Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    const-string v1, "requestId"

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->completedDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "completedDate"

    sget-object v2, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->DATE_FORMAT:Ljava/text/DateFormat;

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->completedDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->requestDate:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 169
    const-string v1, "beginDate"

    sget-object v2, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->DATE_FORMAT:Ljava/text/DateFormat;

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->requestDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_1
    iget v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->numberOfFiles:I

    if-eqz v1, :cond_2

    .line 172
    const-string v1, "numberOfFiles"

    iget v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->numberOfFiles:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_2
    const-string v1, "userEmailAddress"

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->userEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "adminEmailAddress"

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->adminEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "status"

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AccountInfo;->status:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-object v0
.end method
