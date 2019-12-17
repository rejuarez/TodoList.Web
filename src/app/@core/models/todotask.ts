export interface TodoTask {
    todoTaskID: number | null;
    categoryID: number;
    description: string;
    document: File;
    categoryName: string;
    creationDate: Date;
    lastModifiedDate: Date;
    isActive: boolean;
    fileContent: string;
    fileContentType: string;
    fileName: string;
}