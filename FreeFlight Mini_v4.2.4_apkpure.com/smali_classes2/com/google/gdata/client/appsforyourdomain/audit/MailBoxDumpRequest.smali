.class public Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;
.super Ljava/lang/Object;
.source "MailBoxDumpRequest.java"


# static fields
.field private static DATE_FORMAT:Ljava/text/DateFormat;


# instance fields
.field private adminEmailAddress:Ljava/lang/String;

.field private beginDate:Ljava/util/Date;

.field private completedDate:Ljava/util/Date;

.field private endDate:Ljava/util/Date;

.field private expiredDate:Ljava/util/Date;

.field private fileUrls:[Ljava/lang/String;

.field private includeDeleted:Z

.field private numberOfFiles:I

.field private packageContent:Ljava/lang/String;

.field private requestDate:Ljava/util/Date;

.field private requestId:Ljava/lang/String;

.field private searchQuery:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private userEmailAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 60
    sget-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->DATE_FORMAT:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 61
    sget-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->DATE_FORMAT:Ljava/text/DateFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->includeDeleted:Z

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;)V
    .locals 4
    .param p1, "entry"    # Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v1, "packageContent"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->packageContent:Ljava/lang/String;

    .line 71
    const-string v1, "requestId"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->requestId:Ljava/lang/String;

    .line 72
    const-string v1, "completedDate"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->checkDateAndParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->completedDate:Ljava/util/Date;

    .line 73
    const-string v1, "endDate"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->checkDateAndParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->endDate:Ljava/util/Date;

    .line 74
    const-string v1, "requestDate"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->checkDateAndParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->requestDate:Ljava/util/Date;

    .line 75
    const-string v1, "expiredDate"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->checkDateAndParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->expiredDate:Ljava/util/Date;

    .line 76
    const-string v1, "beginDate"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->checkDateAndParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->beginDate:Ljava/util/Date;

    .line 77
    const-string v1, "searchQuery"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->searchQuery:Ljava/lang/String;

    .line 78
    const-string v1, "adminEmailAddress"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->adminEmailAddress:Ljava/lang/String;

    .line 79
    const-string v1, "userEmailAddress"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->userEmailAddress:Ljava/lang/String;

    .line 80
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->status:Ljava/lang/String;

    .line 81
    const-string v1, "includeDeleted"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "includeDeleted"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->includeDeleted:Z

    .line 85
    const-string v1, "numberOfFiles"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "numberOfFiles"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->numberOfFiles:I

    .line 89
    iget v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->numberOfFiles:I

    if-lez v1, :cond_2

    .line 90
    iget v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->numberOfFiles:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->fileUrls:[Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    .local v0, "fileIndex":I
    :goto_2
    iget v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->numberOfFiles:I

    if-ge v0, v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->fileUrls:[Ljava/lang/String;

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

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 81
    .end local v0    # "fileIndex":I
    :cond_0
    iget-boolean v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->includeDeleted:Z

    goto :goto_0

    .line 85
    :cond_1
    iget v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->numberOfFiles:I

    goto :goto_1

    .line 96
    :cond_2
    return-void
.end method

.method private checkDateAndParse(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 247
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->DATE_FORMAT:Ljava/text/DateFormat;

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
    .line 163
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->adminEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBeginDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->beginDate:Ljava/util/Date;

    return-object v0
.end method

.method public getCompletedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->completedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->endDate:Ljava/util/Date;

    return-object v0
.end method

.method public getExpiredDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->expiredDate:Ljava/util/Date;

    return-object v0
.end method

.method public getFileUrls()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->fileUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfFiles()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->numberOfFiles:I

    return v0
.end method

.method public getPackageContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->packageContent:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->requestDate:Ljava/util/Date;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUserEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->userEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isIncludeDeleted()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->includeDeleted:Z

    return v0
.end method

.method public setAdminEmailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "adminEmailAddress"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->adminEmailAddress:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setBeginDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "beginDate"    # Ljava/util/Date;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->beginDate:Ljava/util/Date;

    .line 200
    return-void
.end method

.method public setCompletedDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "completedDate"    # Ljava/util/Date;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->completedDate:Ljava/util/Date;

    .line 160
    return-void
.end method

.method public setEndDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->endDate:Ljava/util/Date;

    .line 184
    return-void
.end method

.method public setExpiredDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "expiredDate"    # Ljava/util/Date;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->expiredDate:Ljava/util/Date;

    .line 216
    return-void
.end method

.method public setFileUrls([Ljava/lang/String;)V
    .locals 0
    .param p1, "fileUrls"    # [Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->fileUrls:[Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setIncludeDeleted(Z)V
    .locals 0
    .param p1, "includeDeleted"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->includeDeleted:Z

    .line 144
    return-void
.end method

.method public setNumberOfFiles(I)V
    .locals 0
    .param p1, "numberOfFiles"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->numberOfFiles:I

    .line 124
    return-void
.end method

.method public setPackageContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageContent"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->packageContent:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setRequestDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "requestDate"    # Ljava/util/Date;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->requestDate:Ljava/util/Date;

    .line 192
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->requestId:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchQuery"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->searchQuery:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->status:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setUserEmailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "userEmailAddress"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->userEmailAddress:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public toGenericEntry()Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 4

    .prologue
    .line 224
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;-><init>()V

    .line 225
    .local v0, "entry":Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    const-string v1, "packageContent"

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->packageContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->completedDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 227
    const-string v1, "completedDate"

    sget-object v2, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->DATE_FORMAT:Ljava/text/DateFormat;

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->completedDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->endDate:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 230
    const-string v1, "endDate"

    sget-object v2, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->DATE_FORMAT:Ljava/text/DateFormat;

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->endDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->beginDate:Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 233
    const-string v1, "beginDate"

    sget-object v2, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->DATE_FORMAT:Ljava/text/DateFormat;

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->beginDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->searchQuery:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 236
    const-string v1, "searchQuery"

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_3
    iget v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->numberOfFiles:I

    if-eqz v1, :cond_4

    .line 239
    const-string v1, "numberOfFiles"

    iget v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->numberOfFiles:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_4
    const-string v1, "includeDeleted"

    iget-boolean v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->includeDeleted:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "adminEmailAddress"

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->adminEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-object v0
.end method
